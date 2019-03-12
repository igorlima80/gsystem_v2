class AddAddressToLegalCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :legal_customers, :address, foreign_key: true
  end
end
