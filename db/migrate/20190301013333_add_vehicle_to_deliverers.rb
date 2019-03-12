class AddVehicleToDeliverers < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliverers, :vehicle, foreign_key: true
  end
end
