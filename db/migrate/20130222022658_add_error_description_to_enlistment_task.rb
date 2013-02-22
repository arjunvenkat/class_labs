class AddErrorDescriptionToEnlistmentTask < ActiveRecord::Migration
  def change
    add_column :enlistment_tasks, :error_description, :text
  end
end
