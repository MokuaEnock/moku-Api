class CreateMigrations < ActiveRecord::Migration[7.0]
  def change
    create_table :migrations do |t|
      be
      t.string :description

      t.timestamps
    end
  end
end
