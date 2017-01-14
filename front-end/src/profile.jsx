import React, {Component} from 'react';

class Profile extends Component {

  render() {
    return (

      <div className="profile-box">
        <img className="profile-pic-big" src={this.props.pet.profile_picture}/>

        <h2> <strong>Name:</strong> Max/ {this.props.pet.name} </h2>
        <p> <strong>Type:</strong> Dog/ {this.props.pet.type} | Age: 3/ {this.props.pet.age}</p>
        <p> <strong>Introduction:</strong> A cockerspaniel with an attitude... loves kibbles and bits/ {this.props.pet.description} </p>

      </div>


    )
  }
}

export default Profile;
