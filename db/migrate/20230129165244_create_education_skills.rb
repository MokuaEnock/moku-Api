class CreateEducationSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :education_skills do |t|

      t.timestamps
    end
  end
end
