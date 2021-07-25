import mysql.connector
from mysql.connector import Error


def connection():
	try:
		connection = mysql.connector.connect(host = 'localhost', database = "movies", user = "root", password = "")
		return connection
	except Error as e:
	    print("Error while connecting to MySQL", e)
	# finally:
	#     if connection.is_connected():
	#         cursor.close()
	#         connection.close()
	#         print("MySQL connection is closed")


