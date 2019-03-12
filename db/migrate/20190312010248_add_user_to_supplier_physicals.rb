class AddUserToSupplierPhysicals < ActiveRecord::Migration[5.2]
  def change
    add_reference :supplier_physicals, :user, foreign_key: true
  end
end
