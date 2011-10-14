class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticate
    unless current_user
      session[:return_to] = request.url
      redirect_to '/users/login', notice: 'You must log in to do that'
    end
  end
  
  def home
    
  end
  
  private  

  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end  

  helper_method :current_user
  

end
