import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
          <a href='http://localhost:8000/admin/' target='_blank'>Acesso a Área Admin</a>
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload...
        </p>
      </div>
    );
  }
}

export default App;
