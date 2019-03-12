class CreateSupplierPhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_physicals do |t|
      t.string :name
      t.string :identity
      t.string :cpf
      t.references :sex, foreign_key: true

      t.timestamps
    end
  end
end
