# Return an HTML form for creating a new destination
get '/trips/:id/destinations/new' do
  @trip = Trip.find(params[:id])
  "This is the new destinations page!"
  erb :'destinations/new'
end

post '/trips/:id/destinations' do
  @trip = Trip.find(params[:id])
  @destination = Destination.create(
                          city: params[:city],
                          country: params[:country],
                          highlights: params[:highlights],
                          lodging: params[:lodging],
                          transportation: params[:transportation],
                          days: params[:days],
                          trip_id: params[:id]
                          )
  redirect "/trips/#{@trip.id}/destinations/#{@destination.id}"
end

get '/trips/:id/destinations/:destination_id' do
  @trip = Trip.find(params[:id])
  @destination = Destination.find(params[:destination_id])
  erb :'trips/show'
end

get '/destinations' do
  @list_of_destinations = ["San Francisco", "New York", "Los Angeles", "San Diego", "Tokyo", "Austin", "Santa Clara", "Hong Kong", "London"]
  input_city_length = params[:input_city].length
  city_matches = @list_of_destinations.select { |destination| destination[0..input_city_length - 1] == params[:input_city]}
  city_matches.to_json
end
