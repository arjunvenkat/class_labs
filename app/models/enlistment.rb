class Enlistment < ActiveRecord::Base
  attr_accessible :lab_id, :user_id
  belongs_to :lab
  belongs_to :user
  has_many :enlistment_tasks, :dependent =>:destroy
  has_many :tasks, :through => :enlistment_tasks
end
