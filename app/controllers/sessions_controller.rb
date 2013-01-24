class SessionsController < ApplicationController

  def new

  end

  def create
    session[:user_name] = params[:name]
    redirect_to "/labs/1"
  end



  def destroy
    reset_session
    redirect_to "/labs/1"
  end
end
