import React, {Component} from 'react';

class ProfilePic extends Component {
  constructor(props) {
    super(props)
  }

  getPetData = () => {
    this.props.setPet(this.props.pet)
  }

  render() {
    return (
      <img
        className="profile-pic"
        src={this.props.pet.profile_picture}
        onClick={this.getPetData}
      />
    )
  }
}

export default ProfilePic;
