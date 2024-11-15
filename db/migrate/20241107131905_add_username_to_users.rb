class AddUsernameToUsers < ActiveRecord::Migration[7.2]
  def up
    add_column :users, :username, :string, null: false

    add_index :users, :username
  end

  def down
    remove_index :users, :username
    remove_column :users, :username
  end
end
