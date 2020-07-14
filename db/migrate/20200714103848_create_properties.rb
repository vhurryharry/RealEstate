class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :type
      t.string :owner
      t.string :address
      t.integer :rooms
      t.integer :units
      t.integer :shops
      t.integer :sqmt
      t.integer :floors
      t.boolean :air_cond
      t.integer :parking
      t.decimal :price

      t.timestamps
    end
  end
end
