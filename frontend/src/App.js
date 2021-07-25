import React, { Component } from 'react';
import './App.css';

import 'bootstrap/dist/css/bootstrap.min.css';


import Header from './components/header';
import Search from './components/search';
import Filter from './components/filter';
import Movies from './components/movies';
import Paginator from './components/paginator';

import { getMovies } from './services/api-service'



class App extends Component {

  state = {
    movies: [],
    filters: {
      language: '',
      genre: '',
      sort: 'releaseDate',
      search: ''
    },
    totalCount: 0,
    currentPage: 1,
    pageSize: 10,
  }

  handleSearch = async (searchText) => {
    const { filters, currentPage: page, pageSize } = this.state;
    filters.search = searchText;
    this.setState({ filters, currentPage: 1 });
    await this.fetchMovies({ ...filters, page: 1, pageSize })
  }


  handleDropdown = async (name, value) => {
    const { filters, currentPage: page, pageSize } = this.state;
    filters[name] = value;
    this.setState({ filters });
    await this.fetchMovies({ ...filters, page, pageSize });
  }

  async componentDidMount() {
    const { filters, pageSize, currentPage: page } = this.state;
    await this.fetchMovies({ ...filters, page, pageSize });
  }

  fetchMovies = async (params) => {
    try {
      const response = await getMovies(params);
      const { result: movies, total_count: totalCount } = response.data
      this.setState({ movies, totalCount });
    } catch (error) {

    }
  }

  handlePage = async (pageNo) => {
    const { filters, pageSize } = this.state;
    filters.page = pageNo;
    filters.pageSize = pageSize;
    try {
      await this.fetchMovies(filters);
      this.setState({ currentPage: pageNo });
    } catch (error) {

    }
  }

  render() {
    console.log("this.satea", this.state.movies
    );
    return (
      <div className="container-fluid" >
        <Header></Header>
        <br />
        <Search onSearch={(searchText) => this.handleSearch(searchText)} />
        <Filter filters={this.state.filters} onFilterChange={(name, value) => this.handleDropdown(name, value)}></Filter>
        <br />
        <Movies movies={this.state.movies} ></Movies>
        <Paginator
          currentPage={this.state.currentPage}
          pageSize={this.state.pageSize}
          totalCount={this.state.totalCount}
          onPageClick={(pageNo) => this.handlePage(pageNo)} />
      </div>
    );
  }
}

export default App;
