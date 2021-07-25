import React, { Component } from "react"

import MovieGrid from './movieGrid';

class Movies extends Component {
    async componentDidMount() {

    }

    render() {
        const { movies } = this.props;
        return <div>
            <div style={{ display: "flex", flexWrap: "wrap", justifyContent: "space-around" }}>
                {movies.map(movie => <MovieGrid key={movie.id} movie={movie}></MovieGrid>)
                }
            </div>
        </div>
    }
}



export default Movies;
