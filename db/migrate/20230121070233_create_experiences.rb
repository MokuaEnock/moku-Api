class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.belongs_to :role, foreign_key: true
      t.string :title
      t.string :location
      t.string :company_name
      t.string :company_link
      t.string :company_link_image
      t.date :start_date
      t.date :end_date


      t.timestamps
    end
  end
end
