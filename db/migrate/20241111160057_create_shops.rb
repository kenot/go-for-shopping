class CreateShops < ActiveRecord::Migration[7.2]
  def up
    create_table :shops do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :shops, :name, unique: true
  end

  def down
    remove_index :shops, :name
    drop_table :shops
  end
end
