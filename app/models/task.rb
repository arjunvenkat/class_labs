class Task < ActiveRecord::Base
  attr_accessible :description, :lab_id

  belongs_to :lab
  has_many :enlistment_tasks, :dependent =>:destroy
end
