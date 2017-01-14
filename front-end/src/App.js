import React, {Component} from 'react';
import logo from '../public/favicon.ico';
import './App.css';
import ProfilePic from './profile-pic.jsx';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo"/>
          <h2>Welcome to The Pound</h2>
        </div>

        <div className="App-body">

          <ProfilePic/>
          <ProfilePic/>
          <ProfilePic/>
          <ProfilePic/>

          <ProfilePic/>
          <ProfilePic/>
          <ProfilePic/>
          <ProfilePic/>

        </div>
      </div>
    );
  }
}

export default App;
