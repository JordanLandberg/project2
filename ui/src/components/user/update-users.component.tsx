import React from 'react';

import { RouteComponentProps } from 'react-router';
import Role from '../../models/role';
import { Link } from 'react-router-dom';
//import Role from '../../models/role';
// import Role from '../../models/role';
// import Role from '../../models/role';
//import { Link } from 'react-router-dom';

interface IState {
    credentials: {
        userId: number,
        email: string,
        password: string,
        firstName: string,
        lastName: string,
        phone:string,
        role:  Role
       
        
    },
    errorMessage?: string
}

export  default class update extends React.Component<RouteComponentProps, IState> {

    constructor(props: any) {
        super(props);
        this.state = {
            credentials: {
                userId: 0,
                email: '',
                password: '',
                firstName: '',
                lastName: '',
                phone:'',
               role: {

                roleId:1,
                roleName:''
               }
            
            }
          
        }
    }

    handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
        const name = event.target.name;
        const loggedInUserString = localStorage.getItem('user');
        const loggedInUser = loggedInUserString && JSON.parse(loggedInUserString);
        this.setState({
            credentials: {
                ...this.state.credentials,
                [name]: event.target.value,
                userId: loggedInUser.userId,
                email: loggedInUser.email
            }
        });
    }

    submit = async (event: React.FormEvent<HTMLFormElement>) => {
        event.preventDefault();
        try {
            const resp = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/users' ,{
                method: 'PUT',
                credentials: 'include',
                body: JSON.stringify(this.state.credentials),
                headers: {
                    'content-type': 'application/json'
                }
            });
            const user = await resp.json();
            console.log(user);
    
            localStorage.setItem('users', JSON.stringify(user));
            this.props.history.push('/login'); // navigate pages
        } catch (err) {
            console.log(err);
            console.log('invalid credentials');
            this.setState({
                errorMessage: 'Invalid Credentials'
            });
        }
    }

    render() {
        return (
            <form className="form-update" onSubmit={this.submit}>
                <h1 className="h3 mb-3 font-weight-normal">Update user</h1>
              


<label htmlFor="inputemail" className="sr-only">FirstName</label>
                <input type="text" id="inputemail" 
                    name="firstName"
                    className="form-control"
                    placeholder="first name" 
                    onChange={this.handleChange}
                    value={this.state.credentials.firstName} required />



<label htmlFor="inputemail" className="sr-only">LastName</label>
                <input type="text" id="inputemail" 
                    name="lastName"
                    className="form-control"
                    placeholder="last name" 
                    onChange={this.handleChange}
                    value={this.state.credentials.lastName} required />

<label htmlFor="inputemail" className="sr-only">phone</label>
                <input type="text" id="inputemail" 
                    name="phone"
                    className="form-control"
                    placeholder="phone" 
                    onChange={this.handleChange}
                    value={this.state.credentials.phone} required />

{/* <label htmlFor="inputemail" className="sr-only">roleName</label>
                <input type="text" id="inputemail" 
                    name="role"
                    className="form-control"
                    placeholder="roleName" 
                    onChange={this.handleChange}
                    value={this.state.credentials.role.roleName} required />



 */}

{/* <label htmlFor="inputPassword" className="sr-only">Old Password</label>
                <input type="password" id="inputPassword" 
                  
                    className="form-control" 
                    placeholder="Password"
                    onChange={this.handleChange}
                    value={this.state.credentials.password} required /> */}

                <label htmlFor="inputPassword" className="sr-only">new Password</label>
                <input type="password" id="inputPassword" 
                    name="password"
                    className="form-control" 
                    placeholder="Password"
                    onChange={this.handleChange}
                    value={this.state.credentials.password} required />
                {this.state.errorMessage && <p id="error-message">{this.state.errorMessage}</p>}
                <Link to="/second"><button className="btn btn-lg btn-primary btn-block btn-success" type="submit">Update</button></Link>
                <a className="btn btn-lg btn-primary btn-block info" href="/home/login" >Back To login</a>
       
          
{/*   
                <p className="mt-5 mb-3 text-muted">&copy; 2017-2019</p> */}
            </form>





        );
    }
  }





