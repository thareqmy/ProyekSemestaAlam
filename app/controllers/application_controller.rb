class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :admin?

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def admin?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    if (@current_user.username == "admin")
      @current_user.admin = true
    end
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end
end
