class EnlistmentTask < ActiveRecord::Base
  attr_accessible :enlistment_id, :task_id, :status

  belongs_to :enlistment
  belongs_to :task
  has_many :roadblocks

  def unresolved_roadblocks
    self.roadblocks.select { |roadblock| roadblock.status == 'unresolved'}
  end
end
