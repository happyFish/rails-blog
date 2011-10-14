class PasswordResetsController < ApplicationController
  def new
  end
  
  def create
    #add a token
    #send an email
    user = User.find_by_email(params[:email])
    user.send_password_reset
    redirect_to root_path, :notice=>'Password reset email sent'
  end

end
