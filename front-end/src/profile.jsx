import React, {Component} from 'react';

class Profile extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (

      <div>
        <img className="profile-pic-big" src={this.props.pet.profile_picture}/>

        <h2> Name: Max/ {this.props.pet.name} </h2>
        <p> Type: Dog/ {this.props.pet.type} | Age: 3/ {this.props.pet.age}</p>
        <p> Introduction: A cockerspaniel with an attitude... loves kibbles and bits/ {this.props.pet.description} </p>

      </div>


    )
  }
}

export default Profile;
