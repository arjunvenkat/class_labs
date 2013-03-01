class EnlistmentsController < ApplicationController

  def create
    lab = Lab.find(params['enlistment']['lab_id'])
    user = User.find(params['enlistment']['user_id'])

    enlistment = Enlistment.new
    enlistment.lab_id = lab.id
    enlistment.user_id = user.id
    if enlistment.save
      lab.tasks.each do |task|
        EnlistmentTask.create(enlistment_id: enlistment.id,
                              task_id: task.id)
      end
      redirect_to enlistment
    else
      redirect_to user, notice: "There was a problem enrolling you in the lab"
    end

  end

  def show
    @enlistment = Enlistment.find(params[:id])
  end

end
