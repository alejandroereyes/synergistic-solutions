'use strict';

var Navigation = React.createClass({
  render: function () {
    return (
      <nav role='navigation'>
        <ul className='nav nav-tabs'>
          <NavLink name='Home'      url='/' />
          <NavLink name='Companies' url='/companies' />
          <NavLink name='Courses'   url='/courses' />
          <NavLink name='Locations'   url='/locations' />
          <NavLink name='Employees' url='/employees' />
        </ul>
      </nav>
      );
  }
});

var NavLink = React.createClass({
  render: function () {
    return (<li><a onClick={this.clicked} role='presentation'>{this.props.name}</a></li>);
  },

  clicked: function () {
    window.location.href = this.props.url;
  }
});
