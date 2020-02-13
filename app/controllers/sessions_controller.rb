class SessionsController < ApplicationController
  def new
    
  end

  def create
    # session[:user_name] = params[:user_name]
    session[:user_name] = params[:user_name]
    redirect_to '/users'
  end

  def destroy
    session.delete(:id)
    redirect_to login_path
  end

end
