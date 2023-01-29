class CreateEducationUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :education_units do |t|

      t.timestamps
    end
  end
end
