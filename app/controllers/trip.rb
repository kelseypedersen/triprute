


# Display list of all trips
get '/trips' do
  @trips = Trip.all
  erb :'trip/index'
end

# Return an HTML form for creating a new trip
get '/trips/new' do
  erb :new_trip
end

# Displays
get '/trips/:id' do
  @trip = Trip.find(params[:id])
  erb :'trip/show'
end


# Create a new trip
post '/trips' do
  @trip = Trip.create(params)
  redirect "/trips/#{@trip.id}/city/new"
end
# Redirects to create a new city page


# Return an HTML form for creating a new city
get '/trips/:id/city/new' do
  @trip = Trip.find(params[:id])
  "This is the new cities page!"
  erb :new_city
end

post '/trips/:id/city' do
  p params
  @trip = Trip.find(params[:id])
  @city = City.create(city: params[:city], country: params[:country], highlights: params[:highlights], lodging: params[:lodging], transportation: params[:transportation], days: params[:days])
  redirect "/trips/#{@trip.id}/city/#{@city.id}"
end

get '/trips/:id/city/:city_id' do
  @trip = Trip.find(params[:id])
  @city = City.find(params[:city_id])
  erb :'trip/show'
end


# post '/trips/:id' do
#   #@trip = Trip.find(params[:id])
#   "showing page!"
# end

# get '/trips/:id' do
#   @trip = Trip.find(params[:id])
#   erb :show
# end

# Returns an HTML form for creating a new city within a trip
# post '/city' do
#   p @city = City.create(params)
#   p @city.trip_id
#   # redirect = "/trips/#{@city.trip_id}"
# end

