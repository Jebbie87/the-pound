import React, {Component} from 'react';

class ProfilePic extends Component {

  getPetData = () => {
    this.props.setPet(this.props.pet)
  }

  render() {
    return (

      <img
        role="presentation"
        className="profile-pic"
        src={this.props.pet.profile_picture}
        onClick={this.getPetData}
      />
    )
  }
}

export default ProfilePic;
