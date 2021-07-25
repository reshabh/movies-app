import axios from 'axios';
const queryString = require('query-string');


const BASE_URL = "http://localhost:8000"

axios.defaults.baseURL = BASE_URL;

async function getMovies(filters) {
    return await axios.get(`/movies?${queryString.stringify(filters)}`);
}

export { getMovies };