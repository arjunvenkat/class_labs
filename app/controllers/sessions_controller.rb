class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_name(params[:name])
    session[:user_id] = user.id

    redirect_to user
  end



  def destroy
    reset_session
    redirect_to root_url
  end
end
