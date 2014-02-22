class AddTwitterHandleToUser < ActiveRecord::Migration
  def up
    add_column :users, :phone_number, :integer
    add_column :users, :twitter_handle, :string
    add_column :users, :preferred_contact, :string
  end

  def down
    remove_column :users, :phone_number
    remove_column :users, :twitter_handle
    remove_column :users, :preferred_contact
  end
end
