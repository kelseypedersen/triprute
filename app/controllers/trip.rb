# Display list of all trips
get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

# Return an HTML form for creating a new trip
get '/trips/new' do
  erb :'trips/new'
end

# Displays
get '/trips/:id' do
  @trip = Trip.find(params[:id])
  erb :'trips/show'
end


# Create a new trip
post '/trips' do
  @trip = Trip.create(params)
  redirect "/trips/#{@trip.id}/destinations/new"
end
# Redirects to create a new destination page


# Return an HTML form for creating a new destination
get '/trips/:id/destinations/new' do
  @trip = Trip.find(params[:id])
  "This is the new destinations page!"
  erb :'destinations/new'
end

post '/trips/:id/destinations' do
  p params
  @trip = Trip.find(params[:id])
  @destination = Destination.create(city: params[:city], country: params[:country], highlights: params[:highlights], lodging: params[:lodging], transportation: params[:transportation], days: params[:days], trip_id: params[:id])
  redirect "/trips/#{@trip.id}/destinations/#{@destination.id}"
end

get '/trips/:id/destinations/:destination_id' do
  @trip = Trip.find(params[:id])
  @destination = Destination.find(params[:destination_id])
  erb :'trips/show'
end


# post '/trips/:id' do
#   #@trip = Trip.find(params[:id])
#   "showing page!"
# end

# get '/trips/:id' do
#   @trip = Trip.find(params[:id])
#   erb :show
# end

# Returns an HTML form for creating a new destination within a trip
# post '/city' do
#   p @city = City.create(params)
#   p @city.trip_id
#   # redirect = "/trips/#{@city.trip_id}"
# end

