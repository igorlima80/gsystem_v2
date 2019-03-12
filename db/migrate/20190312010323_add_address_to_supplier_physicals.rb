class AddAddressToSupplierPhysicals < ActiveRecord::Migration[5.2]
  def change
    add_reference :supplier_physicals, :address, foreign_key: true
  end
end
