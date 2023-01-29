class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :institution
      t.string :certificate_link
      t.string :issue_date

      t.timestamps
    end
  end
end
