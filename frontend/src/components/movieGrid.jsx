import React, { Component } from "react"

class MovieGrid extends Component {
    render() {
        const { movie } = this.props;
        const { image, title, description, length, releaseDate } = movie;
        return (
            <div className="card mt-2" style={{ "width": "18rem" }}>
                <img src={image} className="card-img-top" style={{maxHeight:"350px"}} alt="..." />
                <div className="card-body">
                    <h5 className="card-title">{title}</h5>
                    <p className="card-text">{description}</p>

                    <p className="card-text"><small className="text-muted">Release Date{releaseDate} | Timing:{length}</small></p>
                </div>
            </div>
        )

    }
}



export default MovieGrid;
