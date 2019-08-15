import React from 'react';

interface ISignInState {
  username: string;
  password: string;
  errorMessage: string;
}

export default class HomeLoginComponent extends React.Component<any, ISignInState> {
  constructor(props: any) {
    super(props);
    this.state = {
      username: '',
      password: '',
      errorMessage: ''
    };
  }

  submit = async (event: { preventDefault: () => void; }) => {
    event.preventDefault();
    console.log('attempting to login');
    const credentials = {
      username: this.state.username,
      password: this.state.password
    };

    try {
      const resp = await fetch('http://localhost:8012/login', {
        method: 'POST',
        credentials: 'include',
        body: JSON.stringify(credentials),
        headers: {
          'content-type': 'application/json'
        }
      })
      console.log(resp);

      if (resp.status === 401) {
        this.setState({
          errorMessage: 'Invalid Credentials'
        });
      } else if (resp.status === 200) {
        // redirect to spaceships page
        // const user = await resp.json();
        this.props.history.push('/home');
      } else {
        this.setState({
          errorMessage: 'Cannot Login At This Time'
        });
      }
    } catch (err) {
      console.log(err);
    }
  }

  updateUsername = (event: { target: { value: string; }; }) => {
    this.setState({
      username: event.target.value
    });
  }

  updatePassword = (event: { target: { value: string; }; }) => {
    this.setState({
      password: event.target.value
    })
  }

  render() {
    const { username, password, errorMessage } = this.state;
    return (
      <div id = "form">
      <form className="form-signin" onSubmit={this.submit}>
        <h1 id = "top left" className="h3 mb-3 font-weight-normal">Sign In</h1>
        <label htmlFor="inputUsername" className="sr-only">Username</label>
        <input type="text" id="inputUsername" name="username"
          className="form-control" placeholder="Username"
          required value={username} onChange={this.updateUsername} />
        
        <label htmlFor="inputPassword" className="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password"
          className="form-control" placeholder="Password"
          required value={password} onChange={this.updatePassword} />

        <button id = "but" className="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <button id = "but" className="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
        <p id="login-error">{errorMessage}</p>
      </form>
      
        <form className="form-paragraph">
          <p>Hello me and abed :)</p>
        </form>
    
      

      </div>

    

    );



  }
}
