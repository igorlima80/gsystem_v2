class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.numeric :canister
      t.string :short_description
      t.string :code_anp
      t.references :ncm, foreign_key: true

      t.timestamps
    end
  end
end
