class CreateCollaborators < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborators do |t|
      t.string :name
      t.date :admission_date
      t.date :resignation_date
      t.references :sex, foreign_key: true

      t.timestamps
    end
  end
end
