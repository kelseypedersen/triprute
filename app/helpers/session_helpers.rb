helpers do

  def signin(user)
    session[:user_id] = user.id
  end

  def signout!
    session[:user_id] = nil

  def current_user
    @user ||= User.where(id: session[:user_id]).first if session[:user_id]
  end

  def require_unless_logged_in!
    redirect '/signup' unless user_logged_in?
  end

  def user_logged_in?
    puts "is logged in?"
    session[:logged_in]
  end
end

