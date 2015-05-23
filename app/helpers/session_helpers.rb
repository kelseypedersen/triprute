helpers do

  def login(user)
    p "*" * 80
    p user
    p "*" * 80
    session[:user_id] = user.id
  end

  def signout!
    session[:user_id] = nil
  end

  def current_user
    @user ||= User.where(id: session[:user_id]).first if session[:user_id]
    p session[:user_id]
    p @user
    @user
  end

  before do
    redirect '/users/new' if user_logged_in? == false
  end

  def user_logged_in?
    puts "is logged in?"
    session[:logged_in]
  end
end

    #redirect to login page again
  # def require_unless_logged_in!
  #   #sinatra check user is signed in before do
  #   redirect '/users/new' unless user_logged_in?
  # end

