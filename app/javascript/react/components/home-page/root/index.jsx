import React, { useState } from 'react';

function HomePageRoot() {
  const [welcome, setWelcome] = useState('Welcome to Ecommerce Site!')

  return <h1>{welcome}</h1>;
}

export default HomePageRoot