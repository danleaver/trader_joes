import React, { useState, useEffect } from 'react';
import axios from 'axios'

const List = ({ listId }) => {

  const [items, setItems] = useState([]);

  // const { hello } = props.hello

  console.log(listId)
  // const listId = 2


useEffect(() => {

  
  axios.get(`/api/lists/${listId}/items`)
    .then( res => {
      
      setItems(res.data)
    })
    .catch( err => {
      console.log('the error ' + err)
    })

}, [])

// const listId = this.props.listId
// console.log(listId)


  return (
    <>
    {items.map( (item, index) => (
      <li key={index}>{item.name}</li>
    ))}
    </>

  )
}

export default List