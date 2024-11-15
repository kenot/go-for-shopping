class CreateUsers < ActiveRecord::Migration[7.2]
  def up
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.datetime :created_at
    end
    add_index :users, :email, unique: true
  end

  def down
    drop_table :users
  end
end
