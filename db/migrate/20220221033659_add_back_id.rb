class AddBackId < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :id, :primary_key
  end
end
