import React from 'react'
import { Route, Switch, Router } from 'react-router-dom';
import history from './history';
import { rootPath } from 'constants/paths'

import HomePageRoot from '../../home-page/root/index.jsx'

export const App = (props) => {
  return (
    <Router history={history}>
      <Switch>
        <Route component={HomePageRoot} exact path={rootPath} />
      </Switch>
    </Router>
  )
}

export default App
