class AddAddressToSupplierLegals < ActiveRecord::Migration[5.2]
  def change
    add_reference :supplier_legals, :address, foreign_key: true
  end
end
