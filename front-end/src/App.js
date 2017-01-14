import React, {Component} from 'react';
import logo from '../public/favicon.ico';
import './App.css';
import ProfilePic from './profile-pic.jsx';
import Profile from './profile.jsx';
import axios from 'axios';

class App extends Component {

  state = {
    pets: [],
    pet: ""
  }

  componentWillMount() {
    axios.get('http://0.0.0.0:3000/pets').then((response) => {
      console.log(response);
      this.setState({pets: response.data})
    }).catch((error) => {
      console.log(error)
    })
  }

  setCurrentPet = (pet) => {
    this.setState({pet: pet})
  }

  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo"/>
          <h2>Welcome to The Pound</h2>
          <p>Because if you can't love my pet, you don't stand a chance with me!</p>
        </div>

        <div className="App-body">

          {/* This gets all the pets */}
          {this.state.pets.map((pet, index) => {
            return (<ProfilePic
            pet={pet}
            setPet={this.setCurrentPet}
            />)
            })
          }

          {/* Individual profiles you get from clicking on them */}
          <Profile
            pet={this.state.pet}
          />

        </div>
      </div>
    );
  }
}

export default App;
