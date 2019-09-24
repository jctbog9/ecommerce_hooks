import React from 'react'
import { shallow } from 'enzyme'
import App from './index.jsx'

describe('second test', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = shallow(<App />);
  });

  it('should render a Router component', () => {
    const router = wrapper.find('Router')
    expect(router).toBeTruthy()
  })
})