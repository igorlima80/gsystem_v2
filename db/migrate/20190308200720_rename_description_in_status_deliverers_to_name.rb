class RenameDescriptionInStatusDeliverersToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :deliverer_statuses, :description, :name
  end
end
