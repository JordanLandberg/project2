import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class NavbarComponent extends Component {
    render() {
        return (
            <nav className="navbar navbar-toggleable-md navbar-expand-lg navbar-light bg-light display-front nav-pad">
                <div className="navbar-header c-pointer shift-left">
                    <Link to="/home/login" className="unset-anchor">Logo Image</Link>
                </div>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarsExample04">
                    <ul className="navbar-nav ml-auto margin-nav">
                        <li className="nav-item active">
                            <Link to="/home/login" className="unset-anchor nav-link">Home</Link>
                        </li>
                        <li className="nav-item active dropdown">
                            <div className="nav-link dropdown-toggle pointer" id="examples-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</div>
                            <div className="dropdown-menu" aria-labelledby="examples-dropdown">
                                <div className="dropdown-item"><h6>Front-End</h6></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">HTML</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">CSS</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">JavaScript</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">React</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">Redux</Link></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><h6>Back-End</h6></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">Node</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">Express</Link></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><h6>Data Structures/Algorithms</h6></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">Data Structures/Algorithms</Link></div>
                                <div className="dropdown-divider"></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">All Categories</Link></div>
                            </div>
                        </li>
                        <li className="nav-item active dropdown">
                            <div className="nav-link dropdown-toggle pointer" id="examples-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</div>
                            <div className="dropdown-menu" aria-labelledby="examples-dropdown">
                                <div className="dropdown-item"><Link to="/admin/users" className="unset-anchor nav-link active">View Users</Link></div>
                                <div className="dropdown-item"><Link to="/admin/review" className="unset-anchor nav-link active">Review Questions</Link></div>
                            </div>
                        </li>
                        <li className="nav-item active">
                            <Link to="/second" className="unset-anchor nav-link">Profile</Link>
                        </li>
                        <li className="nav-item active">
                            <Link to="/home/login" className="unset-anchor nav-link">
                                <button className="btn btn-secondary btn-info btn-custom">Log In</button>
                            </Link>
                        </li>
                    </ul>
                </div>
            </nav>
                        )
                    }
                }
