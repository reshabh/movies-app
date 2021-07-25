import React, { Component } from "react"

class Search extends Component {

    state = {
        searchText: ''
    }

    handleChange = (event) => {
        this.setState({ searchText: event.target.value });

        // The following condition is to get movies again when the search string becomes empty
        if (event.target.value == '')
            this.props.onSearch('')
    }

    render() {
        return (<div className="input-group mb-3 container">
            <input type="text" value={this.state.searchText} onChange={this.handleChange} className="form-control" placeholder="Search movies here..." aria-label="search movies" aria-describedby="basic-addon2" />
            <div className="input-group-append">
                <span onClick={() => this.props.onSearch(this.state.searchText)} className="input-group-text" id="basic-addon2">Search</span>
            </div>
        </div>);
    }
}



export default Search;
