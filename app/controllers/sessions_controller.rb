class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user 
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:message] = "Invalid credentials"
      redirect_to login_path
    end
  end

  def destroy
    p "LOGGING OUT"
    session[:user_id] = nil
    # session.delete(:user_id)
    redirect_to login_path
  end

end
