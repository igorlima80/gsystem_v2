class CreateDeliverers < ActiveRecord::Migration[5.2]
  def change
    create_table :deliverers do |t|
      t.string :name
      t.string :phone
      t.date :admission_date
      t.date :resignation_date
      t.references :sex, foreign_key: true
      t.references :deliverer_status, foreign_key: true
      t.references :estabilishment, foreign_key: true
      t.references :type_deliverer, foreign_key: true

      t.timestamps
    end
  end
end
