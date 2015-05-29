# Display list of all trips
get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

# Return an HTML form for creating a new trip
get '/trips/new' do
  erb :'trips/new'
end


# get '/trips/:category' do
#   @trip = Trip.where(category: params[:category])
#   erb :'trips/category'
# end

# Displays the specific
get '/trips/:id' do
  @trip = Trip.find(params[:id])
  p @trip
  erb :'trips/show'
end


# Create a new trip
post '/trips' do
  @trip = Trip.create(
                title: params[:title],
                category: params[:category],
                season: params[:season],
                comments: params[:comments],
                photo: params[:photo],
                user_id: session[:user_id]
                )
  redirect "/trips/#{@trip.id}/destinations/new"
end
# Redirects to create a new destination page

get '/trips/:id/favorites' do
  trip = Trip.find(params[:id])
  #trip.wishlist.create(value: 1)
  redirect "/trips"
end


