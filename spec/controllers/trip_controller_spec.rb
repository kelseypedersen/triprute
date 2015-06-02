require_relative '../spec_helper'

describe 'trip_controller' do

  describe 'GET /trips' do

    it "shows all trips" do
      get "/trips"
      expect(last_response).to be_ok
    end

    it "responds with a 200" do
      get "/trips"
      expect(last_response.status).to eq(200)
    end

  end
end