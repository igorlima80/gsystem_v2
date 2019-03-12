class AddUserToDeliverers < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliverers, :user, foreign_key: true
  end
end
