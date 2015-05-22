helpers do
  def require_unless_logged_in!
    redirect '/signup' unless user_logged_in?
  end

  def user_logged_in?
    puts "is logged in?"
    session[:logged_in]
  end
end


# Display list of all trips
get '/trips' do
  @trips = Trip.all
  erb :trips
end


# Return an HTML form for creating a new trip
get '/trips/new' do
  erb :new_trip
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
  erb :show
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

get '/signup' do
  erb :signup
end

post '/signup' do
  if params[:passphrase] == "I love passwords"
    redirect 'secure'
    session[:logged_in] == true
  end
end

get '/signin' do
  erb :signin
end

post '/signin' do #login
  user = User.where(email: params[:email]).first
  if user && user.password == params[:password]
    # session[:user_id] = user.id
    signin(user)
    redirect to ('/')
  else
    @login_failed = true
    erb :signin
  end
end

get '/signout' do
  signout!
  redirect to('/')
end