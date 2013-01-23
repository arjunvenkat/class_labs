class CreateEnlistmentTasks < ActiveRecord::Migration
  def change
    create_table :enlistment_tasks do |t|
      t.integer :enlistment_id
      t.integer :task_id
      t.timestamps
    end
  end
end
