class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.belongs_to :projecttype, foreign_key: true
      t.string :name
      t.string :short_description
      t.string :description
      t.date :project_start
      t.date :project_end
      t.string :github_link
      t.string :live_link
      t.boolean :status
      t.string :field

      t.timestamps
    end
  end
end
