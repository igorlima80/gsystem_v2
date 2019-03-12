class AddUserToSupplierLegals < ActiveRecord::Migration[5.2]
  def change
    add_reference :supplier_legals, :user, foreign_key: true
  end
end
