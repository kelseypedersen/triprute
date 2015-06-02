helpers do

  def login(user)
    session[:user_id] = user.id
  end

  def signout!
    session[:user_id] = nil
  end

  def current_user
    @user ||= User.where(id: session[:user_id]).first if session[:user_id]
  end

  before do
    redirect '/users/new' if user_logged_in? == false
  end

  def user_logged_in?
    session[:logged_in]
  end
end


