'use strict';

var Navigation = React.createClass({
  render: function () {
    return (
      <nav>
        <NavLink name='Home'      url='/' />
        <NavLink name='Companies' url='/companies' />
        <NavLink name='Courses'   url='/courses' />
        <NavLink name='Locations'   url='/locations' />
        <NavLink name='Employees' url='/employees' />
      </nav>
      );
  }
});

var NavLink = React.createClass({
  render: function () {
    return (<a onClick={this.clicked} className='btn btn-xs'>{this.props.name}</a>);
  },

  clicked: function () {
    window.location.href = this.props.url;
  }
});
