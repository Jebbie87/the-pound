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
      this.setState({pets: response.data})
    }).catch((error) => {
      console.log(error)
    })
  }

  setCurrentPet = (pet) => {
    this.setState({
      showPet: true,
      pet: pet,
    })
  }

  closeProfileCard = () => {
    this.setState({showPet: false,})
  }

  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo"/>
          <h2>Welcome to The Pound</h2>
          <p id="tagline">If you can't love my pet, you don't stand a chance with me!</p>
          <br/>
          <br/>
          <br/>
        </div>

        <div>
          <div className="pics-container">
            {/* This gets all the pets */}
            {this.state.pets.map((pet, index) => {
              return (
                <ProfilePic
                  pet={pet}
                  setPet={this.setCurrentPet}
                  key={index}
                />)
            })
            }
          </div>
        </div>
          {/* Individual profiles you get from clicking on them */}
          {this.state.showPet ? <Profile pet={this.state.pet} close={this.closeProfileCard}/> : null}
      </div>
    );
  }
}

export default App;
