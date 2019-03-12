class CreatePhysicalCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_customers do |t|
      t.references :sex, foreign_key: true
      t.string :name
      t.string :rg
      t.string :cpf
      t.date :birth_date
      t.string :email
      t.string :registration
      t.string :observation

      t.timestamps
    end
  end
end
