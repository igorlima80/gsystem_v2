class RenameDescriptionInEstabilishmentToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :estabilishments, :description, :name
  end
end
