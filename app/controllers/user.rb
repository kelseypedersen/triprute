# Displays the signup page
get '/users/new' do
  "This is the get signup"
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/edit' do
  erb :'users/edit'
end

post '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(username: params[:username], email: params[:email], password: params[:password])
  redirect to ("/users/#{@trip.id}")
end

post '/users/:id' do
  @user = User.find(params[:id])
  "Hello World"
end





# Creates a new signup
post '/users' do
  p "This is the post signup"
  @user = User.new(username: params[:username], email: params[:email], password: params[:password])
  @user.password = params[:password]
  if @user.save
    login(@user)
    #session[:user_id] = @user.id
    redirect to ('/')
  else
    erb :'users/new'
  end
end



