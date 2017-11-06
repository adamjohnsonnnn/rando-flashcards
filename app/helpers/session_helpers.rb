helpers do

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def set_current_userid(user_id)
    session[:user_id] = user_id
  end

end
