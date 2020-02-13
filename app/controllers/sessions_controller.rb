class SessionsController < ApplicationController
  
  
  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:login][:password])
     
      session[:user_id] = user.id.to_s
      redirect_to user, notice: 'Successfully logged in!'
    else
      flash.now.alert = "Incorrect email or password, try again."
      redirect_to login_path
    end
  end



  def destroy
    p "LOGGING OUT"
    session[:user_id] = nil
  
    redirect_to login_path

  end
end
