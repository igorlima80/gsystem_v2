class AddUserToLegalCustomer < ActiveRecord::Migration[5.2]
  def change
    add_reference :legal_customers, :user, foreign_key: true
  end
end
