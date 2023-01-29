class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.date :start
      t.date :end
      t.string :name
      t.string :major

      t.timestamps
    end
  end
end
