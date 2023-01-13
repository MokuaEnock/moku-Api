class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
