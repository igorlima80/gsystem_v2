class CreateNcms < ActiveRecord::Migration[5.2]
  def change
    create_table :ncms do |t|
      t.numeric :code
      t.string :description
      t.string :unity

      t.timestamps
    end
  end
end
