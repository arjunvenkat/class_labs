class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.text :description
      t.string :status, default: 'unresolved'

      t.timestamps
    end
  end
end
