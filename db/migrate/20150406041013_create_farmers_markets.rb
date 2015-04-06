class CreateFarmersMarkets < ActiveRecord::Migration
  def change
    create_table :farmers_markets do |t|
      t.string :name
      t.string :website
      t.string :facebook
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
