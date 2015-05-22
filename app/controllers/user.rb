# Displays the signup page
get '/user/new' do
  "This is the get signup"
  erb :'login/signup'
end

# Creates a new signup
post '/user' do
  p "This is the post signup"
  if params[:password_hash] == "ilovesf"

    # redirect 'secure'
    #redirect to ('/trip/index')
  session[:logged_in] == true
  end
end