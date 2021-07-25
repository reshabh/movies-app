import React, { Component } from "react"
import Select from 'react-select'


class Filter extends Component {


    languages = [
        { value: '', label: 'Language' },
        { value: 'Hindi', label: 'Hindi' },
        { value: 'English', label: 'English' },
        { value: 'Marathi', label: 'Marathi' }
    ]
    genre = [
        { value: '', label: 'Genre' },
        { value: 'Action', label: 'Action' },
        { value: 'Comedy', label: 'Comedy' },
        { value: 'Horror', label: 'Horror' },
    ]

    sort = [
        { value: 'releaseDate', label: 'Sort by Release date' },
        { value: 'length', label: 'Sort by movie length' }
    ]


    handleDropdown = (event) => {
        const { name, value } = event.target;
        this.props.onFilterChange(name, value)
    }


    render() {
        const {filters} = this.props;
        return <div className="d-flex container">
            <select name="language" className="form-select mx-3" value={filters.language} onChange={this.handleDropdown}>
                {this.languages.map(lang => <option key={lang.value} value={lang.value}>{lang.label}</option>)}
            </select>

            <select name="genre" className="form-select mx-3" value={filters.genre} onChange={this.handleDropdown}>
                {this.genre.map(g => <option key={g.value} value={g.value}>{g.label}</option>)}
            </select>

            <select name="sort" className="form-select mx-3" value={filters.sort} onChange={this.handleDropdown}>
                {this.sort.map(s => <option key={s.value} value={s.value}>{s.label}</option>)}
            </select>
        </div>
    }
}



export default Filter;
