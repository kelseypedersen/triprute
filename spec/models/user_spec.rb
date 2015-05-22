require 'spec_helper'

describe 'User' do
  it 'should have a password' do
    kelsey = User.create(email: 'kelsey@gmail.com', password: 'ilovesf')
    expect(kelsey.password).to eq('ilovesf')
    expect(kelsey.password_digest).to_not eq('ilovesf')
  end
end