class CreateRoadblocks < ActiveRecord::Migration
  def change
    create_table :roadblocks do |t|
      t.text :description
      t.string :status
      t.integer :enlistment_task_id

      t.timestamps
    end
  end
end
