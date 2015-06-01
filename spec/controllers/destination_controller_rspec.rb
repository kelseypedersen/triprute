require_relative '../spec_helper'

describe 'destination_controller' do

  describe 'GET /trips/:id/destinations/new' do

    it "shows the new destination page" do
      trip = Trip.create({"title" => "12 Days in Australia"})
      get "/trips/#{trip.id}/destinations/new"
      expect(last_response).to be_ok
    end

    it "responds with a 200" do
      trip = Trip.create({"title" => "12 Days in Australia"})
      get "/trips/#{trip.id}/destinations/new"
      expect(last_response.status).to eq(200)
    end

  end
end