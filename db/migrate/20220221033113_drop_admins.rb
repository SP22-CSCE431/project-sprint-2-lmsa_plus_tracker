class DropAdmins < ActiveRecord::Migration[6.1]
  def change
    drop_table :admins
    add_column :users, :id
    remove_column :users, :full_name
    remove_column :users, :user_id
  end
end
