class CreateLegalCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :legal_customers do |t|
      t.string :social_name
      t.string :fantasy_name
      t.string :email
      t.string :observation

      t.timestamps
    end
  end
end
