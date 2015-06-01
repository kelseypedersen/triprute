# Displays the signup page
get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

post '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  redirect to ("/users/#{@user.id}")
  "Hi"
end

post '/users/:id' do
  @user = User.find(params[:id])
  "Hello World"
end


# Creates a new signup
post '/users' do
  @user = User.new(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  @user.password = params[:password]
  if @user.save
    login(@user)
    #session[:user_id] = @user.id
    redirect to ('/')
  else
    erb :'users/new'
  end
end



