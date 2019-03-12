class CreateEstabilishments < ActiveRecord::Migration[5.2]
  def change
    create_table :estabilishments do |t|
      t.string :name
      t.string :state_registration

      t.timestamps
    end
  end
end
