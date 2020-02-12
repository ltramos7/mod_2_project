class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    session[:user_name] = params[:id]
    redirect_to '/users'
  end

  def destroy
  end
end
