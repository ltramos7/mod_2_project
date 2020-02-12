class SessionsController < ApplicationController
  def new
    
  end

  def create

    session[:user_name] = params[:user_name]
    redirect_to '/users/id'
  end

end
