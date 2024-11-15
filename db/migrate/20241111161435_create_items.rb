class CreateItems < ActiveRecord::Migration[7.2]
  def up
    create_table :items do |t|
      t.string :name, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :items
  end
end
