class ChangeNumToString < ActiveRecord::Migration
  def up
    remove_column :users, :phone_number
    remove_column :users, :profile
    add_column :users, :phone_number, :string
  end
  def down
    add_column :users, :phone_number
    add_column :users, :profile
  end
end
