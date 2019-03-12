class RemoveNameToCollaborators < ActiveRecord::Migration[5.2]
  def change
    remove_column :collaborators, :name
  end
end
