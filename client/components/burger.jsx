import React from 'react';
class Menu extends React.Component {
  render() {
    return (
      <div className="openMenu">
        <button>Home</button>
        <button>Home Listings</button>
        <button>My Profile</button>
        <button>Sign In</button>
      </div>
    )
  }
}
class Burger extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isOpen: false
    };
    this.burgerButtonClose = this.burgerButtonClose.bind(this);
    this.burgerButtonOpen = this.burgerButtonOpen.bind(this);
  }

  burgerButtonOpen() {
    this.setState({
      isOpen: true
    });
  }

  burgerButtonClose() {
    this.setState({
      isOpen: false
    })
  }

  render() {
    const openStatus = this.state.isOpen
    let sideMenu;
    let openLeft;
    if (this.state.isOpen = true) {
      sideMenu = 'openMenu';
    } else {
      sideMenu = 'closeMenu'
    }

    return (
      <div>
        <button className="closeMenu" onClick={this.burgerButtonOpen}><i className="fa fa-bars"></i></button>
        <Menu />
      </div>
    )
  }
}

export default function BurgerMenu() {
  return(
    <Burger />
  )
}
