# Display list of all trips
get '/trips' do
end


# Return an HTML form for creating a new trip
get '/trips/new' do
  "new trips page!"
  erb :new_trip
end


# Create a new trip
post '/trips' do
  @trip = Trip.create(title: params[:title], category: params[:category], season: params[:season], comments: params[:comments], photo: params[:photo])
  redirect "/trips/#{@trip.id}/city/new"
end
# Redirects to create a new city page


# Return an HTML form for creating a new city
get '/trips/:id/city/new' do
  @trip = Trip.find(params[:id])
  "This is the new cities page!"
  erb :new_city
end


# Returns an HTML form for creating a new city within a trip
post '/city' do
  p @city = City.create(city: params[:city], country: params[:country], highlights: params[:highlights], lodging: params[:lodging], transportation: params[:transportation], days: params[:days])
  # redirect = "/trips/#{@city.trip_id}"
end


# post '/trips/:id' do
#   #@trip = Trip.find(params[:id])
#   "showing page!"
# end

# get '/trips/:id' do
#   @trip = Trip.find(params[:id])
#   erb :show
# end

