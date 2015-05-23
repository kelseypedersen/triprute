# Displays the signup page
get '/users/new' do
  "This is the get signup"
  erb :'users/new'
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
