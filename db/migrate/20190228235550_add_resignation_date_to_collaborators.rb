class AddResignationDateToCollaborators < ActiveRecord::Migration[5.2]
  def change
    add_column :collaborators, :resignation_date, :date
  end
end
