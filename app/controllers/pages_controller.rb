class PagesController < ApplicationController

  def landing
    if @current_user = current_user
      redirect_to @current_user
    end
  end

end
