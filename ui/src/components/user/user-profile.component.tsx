import React from 'react';
// import  UserCardComponent  from './User-card.component';
import User from '../../models/user';

interface IState {
  users: User[]
}

export default class UserComponent extends React.Component<any, IState> {

  constructor(props: any) {
    super(props);
    this.state = {
      users: []
    };
  }


  // in here we should initialize http calls
  async componentDidMount() {
    const loggedInUserString = localStorage.getItem('user');
    const loggedInUser = loggedInUserString && JSON.parse(loggedInUserString);
    // console.log(loggedInUser)
    const resp = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/users/${loggedInUser.userId}`,
      { method: 'GET', credentials: 'include' });
    const body = await resp.json();
    // console.log(body)
    const test = []
    test.push(body);
    this.setState({
      users: test
    })
    //  console.log(this.state.users)
  }


  render() {

    const User = this.state.users;
    console.log(User);
    return (
      <div className="card">
        <div className="card-body">
          <h5 className="card-title">{User[0] && User[0].email}</h5>
        </div>
        <ul className="list-group list-group-flush">
          <li className="list-group-item">First Name: {User[0] && User[0].firstName}</li>
          <li className="list-group-item">Last Name: {User[0] && User[0].lastName}</li>
          <li className="list-group-item">Email: {User[0] && User[0].email}</li>
          <li className="list-group-item">Role ID: {User[0] && User[0].role.roleId}</li>
          <li className="list-group-item">
          <a className="btn btn-danger" href="/user/update" >
            <button className="btn btn-danger" >Update Profile</button>
            </a>
          </li>
        </ul>
      </div>

    );
  }
}