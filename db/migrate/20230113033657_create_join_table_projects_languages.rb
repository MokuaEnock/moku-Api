class CreateJoinTableProjectsLanguages < ActiveRecord::Migration[7.0]
  def change
    create_join_table :projects, :languages do |t|
      # t.index [:project_id, :language_id]
      # t.index [:language_id, :project_id]
    end
  end
end
