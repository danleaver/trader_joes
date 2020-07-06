import React, { Component } from 'react';
import { Header, List, } from 'semantic-ui-react';
import axios from 'axios';
import { AuthConsumer } from '../providers/AuthProvider';
import { withRouter, Link } from 'react-router-dom'
import ShowList from './ShowList'

class Home extends Component {

  state = { lists: [] }
  
  componentDidMount() {
    
    const { auth: { user }} = this.props;
    // const currentUser = user.id
    // console.log(currentUser)
    axios.get(`/api/users/${user.id}/lists`)
    // axios.get(`/api/users/1/lists/9`)
    .then( res => {
      this.setState({ lists: res.data})
    })
    .catch( err => {
      console.log("the error " + err)
    })
  }
  
  //need to add columns or something in csss here
  render() {
    const lists = this.state.lists
    return( 
      <>
        <Header as="h1" textAlign="center">Sadie and Willy Shopping List App</Header>
        <h3>
          {lists.map( (list, index) => (
            <li key={index}>
              <u><Link to="/showlist">{list.title}</Link>{" "}</u> 
              <i>{list.description}</i> 
              {console.log(list.id)}
              
              <ShowList listId={list.id} />
            </li>
          ))} 
        </h3>
      </>
    
      
    )

  }

}


export class ConnectedHome extends React.Component {
  render() {
    return (
      <AuthConsumer> 
        { auth => 
          <Home { ...this.props } auth={auth} />
        }
      </AuthConsumer>
    )
  }
}

export default withRouter(ConnectedHome);

