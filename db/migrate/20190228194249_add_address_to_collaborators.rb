class AddAddressToCollaborators < ActiveRecord::Migration[5.2]
  def change
    add_reference :collaborators, :address, foreign_key: true
  end
end
