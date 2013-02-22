class EnlistmentsController < ApplicationController

  def show
    @enlistment = Enlistment.find(params[:id])
  end

end
