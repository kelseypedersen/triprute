# Displays the signin page
get '/sessions/new' do
  erb :'sessions/new'
end

# Creates a signin
post '/sessions' do
  user = User.where(email: params[:email]).first
  if user && user.password == params[:password]
    # session[:user_id] = user.id
    login(user)
    redirect to ('/')
  else
    @login_failed = true
    erb :'sessions/new'
  end
end

get '/signout' do
  signout!
  redirect to('/')
end

# delete '/sessions/:id' do
#   signout!
#   redirect to('/')
# end