class EnlistmentTasks < ActiveRecord::Migration
  def change
    add_column :enlistment_tasks, :status, :string, default: "working"
  end
end
