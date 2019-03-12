class AddSocialDataToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :social_data, :jsonb
  end
end
