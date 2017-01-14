import React, {Component} from 'react';

class Profile extends Component {

  render() {
    return (

      <div className="profile-box">
        <img className="profile-pic-big" src={this.props.pet.profile_picture}/>

        <h2> {this.props.pet.name} </h2>
        <p> <strong>Type:</strong> {this.props.pet.pet_type}</p>
        <p><strong>Age:</strong> {this.props.pet.age}</p>
        <p> <strong>Introduction:</strong> {this.props.pet.description} </p>

      </div>


    )
  }
}

export default Profile;
