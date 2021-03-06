import React, { Component } from 'react';
import User from '../../models/user';


interface IState {
    users: User[]
}

export default class ViewUsersComponent extends Component<{}, IState> {
    
    constructor(props: any) {
        super(props);
        this.state = {
            users: []
        };
    }

    async componentDidMount() {
        const resp = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/users', {
            method: 'GET',   
        credentials: 'include'
        });
        const users = await resp.json();
        this.setState({
            users
        });
    }

    render() {
        const users = this.state.users;
        console.log(users[0])
        return (
            <div className="user-table container">
                <br/>
                <h1>View Users</h1>
                <br />
                <br />
                <br />
                <div className="row">
                    <div className="col-span-3"></div>
                    <table className="col-span-6">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Phone #</th>
                                <th>Role</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                            users.map(users =>
                                <tr key={'userId-'+users.userId}>
                                    <td>{users.userId}</td>
                                    <td>{users.email}</td>
                                    <td>{users.firstName}</td>
                                    <td>{users.lastName}</td>
                                    <td>{users.phone}</td>
                                    <td>{users.role.roleName && users.role.roleId}</td>
                                </tr>)
                            }
                        </tbody>
                    </table>
                    <div className="col-span-3"></div>
                </div>
            </div>
        )
    }
}



