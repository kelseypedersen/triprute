# Displays the signin page
get '/session/new' do
  erb :'login/signin'
end

# Creates a signin
post '/session' do
  user = User.where(email: params[:email]).first
  if user && user.password == params[:password]
    # session[:user_id] = user.id
    signin(user)
    redirect to ('/')
  else
    @login_failed = true
    erb :'login/signin'
  end
end

delete '/session/:id' do
  signout!
  redirect to('/')
end