class CreateSkillCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_certifications do |t|

      t.timestamps
    end
  end
end
