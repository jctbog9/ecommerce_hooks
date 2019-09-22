import React from 'react'
import { shallow } from 'enzyme'
import HomePageRoot from './index.jsx'
import { cleanup } from 'react-testing-library';

afterEach(cleanup)

describe('second test', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = shallow(<HomePageRoot />);
  });

  it('should render a HomePageRoot component', () => {
    expect(wrapper).toBeTruthy()
  })
})