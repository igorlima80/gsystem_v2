class AddDelivererToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :deliverer, foreign_key: true
  end
end
