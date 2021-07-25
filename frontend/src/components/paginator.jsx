import React, { Component } from "react"

class Paginator extends Component {


    render() {
        const { totalCount, pageSize, currentPage } = this.props;
        const totalPages = Math.ceil(totalCount / pageSize);

        return (
            <div className= 'd-flex justify-content-around mt-4'>
                <nav aria-label="...">
                    <ul class="pagination">
                        <li className={`page-item ${currentPage === 1 ? 'disabled' : ''}`}>
                            <a class="page-link" onClick={() => this.props.onPageClick(currentPage - 1)} tabindex="-1">Previous</a>
                        </li>

                        {[...Array(totalPages)].map((c, index) => <li className={`page-item ${currentPage === index + 1 ? 'active' : ''}`} ><a class="page-link" onClick={() => this.props.onPageClick(index + 1)}>{index + 1}</a></li>)}

                        <li className={`page-item ${currentPage === totalPages ? 'disabled' : ''}`}>
                            <a class="page-link" onClick={() => this.props.onPageClick(currentPage + 1)}>Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        )
    }
}



export default Paginator;
