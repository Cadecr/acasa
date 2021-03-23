import React from 'react';
import { Route, Link } from 'react-router-dom';
import Home from './pages/home';
import HomeSearch from './pages/homeSearch';
import Login from './pages/login';
import MyAccount from './pages/my-account';
import CreateAccount from './pages/create-account';
import BurgerMenu from './components/burger';

export default class App extends React.Component {
  render() {
    return (
      <div>
        <div className="text-center">
          <Link className="px-4" to="/">Home</Link>
          <Link className="px-4" to="/homeSearch">Find Your New Home</Link>
          <Link className="px-4" to="/login">Login</Link>
          <Link className="px-4" to="/my-account">My Account</Link>
          <Link className="px-4" to="/create-account">Create New Account</Link>
        </div>

        <Route exact path="/">
          <Home />
        </Route>
        <Route path="/homeSearch">
          <HomeSearch />
        </Route>
        <Route path="/login">
          <Login />
        </Route>
        <Route path="/my-account">
          <MyAccount />
        </Route>
        <Route path="/create-account">
          <CreateAccount />
        </Route>

      </div>
    );
  }
}
