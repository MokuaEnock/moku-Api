class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.belongs_to :experience, foreign_key: true
      t.string :description
      t.timestamps
    end
  end
end
