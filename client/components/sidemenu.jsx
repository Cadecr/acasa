import React from 'react';

export default function SideMenu() {
  return (
    <Menu>
      <a className="menu-item" href="/">
        Home
      </a>
      <a className="menu-item" href="../pages/homeSearch">
        Home Listings
      </a>
      <a className="menu-item" href="../pages/my-account">
        My Profile
      </a>
      <a className="menu-item" href="../pages/login">
        Sign In
      </a>
    </Menu>
  )

}
