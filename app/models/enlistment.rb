class Enlistment < ActiveRecord::Base
  attr_accessible :lab_id, :user_id
  belongs_to :lab
  belongs_to :user
end
