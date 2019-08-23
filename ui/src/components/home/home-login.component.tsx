import React from 'react';

import { RouteComponentProps } from 'react-router';
import { Link } from 'react-router-dom';
// import User from '../../models/user';

interface IState {
    credentials: {
        email: string,
        password: string
    },
    errorMessage?: string
}

export  default class SignIn extends React.Component<RouteComponentProps, IState> {

    constructor(props: any) {
        super(props);
        this.state = {
            credentials: {
                email: '',
                password: ''
            }
        }
    }

    handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
        const name = event.target.name;
        this.setState({
            credentials: {
                ...this.state.credentials,
                [name]: event.target.value
            }
        });
    }
    
    submit = async (event: React.FormEvent<HTMLFormElement>) => {
        event.preventDefault();
        try {
            
            const resp = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/login' ,{
                method: 'POST',
                credentials: 'include',
                body: JSON.stringify(this.state.credentials),
                headers: {
                    'content-type': 'application/json'
                }
            });
            const user = await resp.json();
            console.log(user);
    
            localStorage.setItem('user', JSON.stringify(user));
            this.props.history.push('/home'); // navigate pages
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
            <form className="form-signin" onSubmit={this.submit} >
                <h1 className="h3 mb-3 font-weight-normal">Please Login</h1>
                <label htmlFor="inputemail" className="sr-only">email</label>
                <input type="text" id="inputemail" 
                    name="email"
                    className="form-control"
                    placeholder="email" 
                    onChange={this.handleChange}
                    value={this.state.credentials.email} required />
                <label htmlFor="inputPassword" className="sr-only">Password</label>
                <input type="password" id="inputPassword" 
                    name="password"
                    className="form-control" 
                    placeholder="Password"
                    onChange={this.handleChange}
                    value={this.state.credentials.password} required />
                {this.state.errorMessage && <p id="error-message">{this.state.errorMessage}</p>}
                
                <Link to="/categories"><button className="btn btn-lg btn-primary btn-block" type="submit">Sign in</button></Link>
              
                <Link to="/home/register"><button className="btn btn-lg btn-primary btn-block">register</button></Link>
         
                <p className="mt-5 mb-3 text-muted"> <i>It's Not Complicated , We Just Focus On What Matters </i></p>
                 
            </form>
            
        
        );
    }
  }


