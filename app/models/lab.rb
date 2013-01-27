class Lab < ActiveRecord::Base
  attr_accessible :name
  has_many :tasks
  has_many :enlistments, :dependent =>:destroy
end
