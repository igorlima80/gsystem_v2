class AddUserToPhysicalCustomer < ActiveRecord::Migration[5.2]
  def change
    add_reference :physical_customers, :user, foreign_key: true
  end
end
