class Roadblock < ActiveRecord::Base
  attr_accessible :description, :solution, :status, :enlistment_task_id

  belongs_to :enlistment_task
end
