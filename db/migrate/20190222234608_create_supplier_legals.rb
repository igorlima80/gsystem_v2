class CreateSupplierLegals < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_legals do |t|
      t.string :social_name
      t.string :fantasy_name
      t.string :state_registration
      t.string :cnpj

      t.timestamps
    end
  end
end
