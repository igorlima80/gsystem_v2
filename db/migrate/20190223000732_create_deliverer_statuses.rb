class CreateDelivererStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :deliverer_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
