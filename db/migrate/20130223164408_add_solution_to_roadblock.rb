class AddSolutionToRoadblock < ActiveRecord::Migration
  def change
    add_column :roadblocks, :solution, :text
  end
end
