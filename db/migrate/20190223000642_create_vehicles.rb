class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :description
      t.string :color
      t.string :mark
      t.string :mileage
      t.string :plate
      t.string :state_federation

      t.timestamps
    end
  end
end
