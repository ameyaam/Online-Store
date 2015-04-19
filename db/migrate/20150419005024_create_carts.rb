class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.references :FarmersMarket
      t.references :Product

      t.timestamps
    end
    add_index :carts, :user_id
  end
end
