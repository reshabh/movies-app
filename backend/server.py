
from http.server import HTTPServer, SimpleHTTPRequestHandler, test
import sys
import json
from urllib.parse import urlparse, parse_qs
from connection import *



class CORSRequestHandler (SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        SimpleHTTPRequestHandler.end_headers(self)

    connection = connection()
    mycursor = connection.cursor()

    def do_GET(self):
        if self.path.startswith('/movies'):
            try:
                parsed = urlparse(self.path)

                page_number = parse_qs(parsed.query).get('page')
                search = parse_qs(parsed.query).get('search')
                language = parse_qs(parsed.query).get('language')
                genre = parse_qs(parsed.query).get('genre')
                sort = parse_qs(parsed.query).get('sort')
                page_size = parse_qs(parsed.query).get('pageSize') or 10
                
                is_condition = False

                query = "SELECT * FROM relationship as R join movies as M on R.movoeId = M.id join catagory as C on R.taxnomyId = C.id"

                if language or search or genre:
                    condition_query = " where"
                    query = query + condition_query

                if language:
                    is_condition = True
                    language_query = " C.language = '{}'".format(language[0])
                    query = query + language_query

                if genre:
                    if is_condition:
                        genre_query = " and C.genre = '{}'".format(genre[0])
                    else:
                        genre_query = " C.genre = '{}'".format(genre[0])
                    query = query + genre_query

                if search:
                    if is_condition:
                        search_query = " and M.title like '%{}%'".format(search[0])
                    else:
                        search_query = " M.title like '%{}%'".format(search[0])
                    query = query + search_query

                if sort:
                    if sort[0] == 'Length':
                        length_sort = " ORDER BY {} ASC".format(sort[0])
                        query = query + length_sort
                    else:
                        release_sort = " ORDER BY {} DESC".format(sort[0])
                        query = query + release_sort

                else:
                    release_sort = " ORDER BY M.releaseDate DESC"
                    query = query + release_sort

                if not page_number:
                    page_number = [1]
                
                
                self.mycursor.execute(query)
                records = self.mycursor.fetchall()

                limit_offset = " LIMIT {} OFFSET {} ".format(int(page_size[0]), (int(page_number[0])-1)*int(page_size[0]))

                query = query + limit_offset
                self.mycursor.execute(query)
                myresult = self.mycursor.fetchall()
                data = []
                for record in myresult:
                    obj = {}
                    obj['id'] = record[3]
                    obj['title'] = record[4]
                    obj['description'] = record[5]
                    obj['image'] = record[6]
                    obj['length'] = record[7]
                    obj['releaseDate'] = str(record[8])
                    data.append(obj)
                final_data = {'total_count': len(records), 'result': data}
                self.send_json_response(final_data)
            except Exception as e:
                print(e)
                self.send_json_response({'Message': 'Failed to fetch the data'}, 500)

    def send_json_response(self, data, statusCode=200):
        self.send_response(statusCode)
        self.send_header('Content-Type','application/json')
        self.end_headers()
        self.wfile.write(json.dumps(data).encode())


if __name__ == '__main__':
    try:
        test(CORSRequestHandler, HTTPServer, port=int(
        sys.argv[1]) if len(sys.argv) > 1 else 8000)

    except Exception as e:
        print(e)