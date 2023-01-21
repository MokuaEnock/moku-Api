class CreateMigrations < ActiveRecord::Migration[7.0]
  def change
    create_table :migrations do |t|
      t.string :Role
      t.string :name
      t.string :description
      
      t.timestamps
    end
  end
end
