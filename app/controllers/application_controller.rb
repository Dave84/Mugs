class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_path
  end  
  
  private
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
