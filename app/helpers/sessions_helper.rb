module SessionsHelper
  # Logs in passed in user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Establishes a current user if there is one logged in
  def current_user
    if session[:user_id]
        @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Returns true if the user is logged in
  def logged_in?
    !current_user.nil?
  end

  # Logs out current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
