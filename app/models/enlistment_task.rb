class EnlistmentTask < ActiveRecord::Base
  attr_accessible :enlistment_id, :task_id, :status

  belongs_to :enlistment
  belongs_to :task
end
