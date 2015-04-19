class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image_path
      t.string :name
      t.float :price
      t.references :FarmersMarket
      t.references :Category

      t.timestamps
    end
    add_index :products, :FarmersMarket_id
    add_index :products, :Category_id
  end
end
