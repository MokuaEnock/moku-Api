class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :Projects, :Tags do |t|
      # t.index [:project_id, :tag_id]
      # t.index [:tag_id, :project_id]
      t.index :project_id
      t.index :tag_id
    end
  end
end
