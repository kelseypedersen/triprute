require 'spec_helper'

describe 'index_controller' do

  describe 'GET /' do
    it "shows the home page" do
      get '/'
      expect(last_response).to be_ok
    end
  end

end