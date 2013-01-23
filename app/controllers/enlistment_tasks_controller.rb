class EnlistmentTasksController < ApplicationController
  def set_status
    @enlistment_task = EnlistmentTask.find_by_id(params[:id])
    @enlistment_task.status = params[:status]
    respond_to do |format|
      if @enlistment_task.save
        format.html { redirect_to enlistment_task.enlistment.lab, notice: 'Status updated' }
        format.js
      else
        format.html { redirect_to enlistment_task.enlistment.lab, notice: 'error updating status' }
      end
    end
  end
end
