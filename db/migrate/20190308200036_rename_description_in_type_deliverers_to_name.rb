class RenameDescriptionInTypeDeliverersToName < ActiveRecord::Migration[5.2]
  def change
      rename_column :type_deliverers, :description, :name
  end
end
