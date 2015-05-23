# Display list of all trips
get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

# Return an HTML form for creating a new trip
get '/trips/new' do
  erb :'trips/new'
end

# Displays the specific
get '/trips/:id' do
  @trip = Trip.find(params[:id])
  erb :'trips/show'
end


# Create a new trip
post '/trips' do
  @trip = Trip.create(title: params[:title], category: params[:category], season: params[:season], comments: params[:comments], photo: params[:photo], user_id: session[:user_id])
  redirect "/trips/#{@trip.id}/destinations/new"
end
# Redirects to create a new destination page



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

