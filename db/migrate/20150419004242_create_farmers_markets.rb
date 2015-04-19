class CreateFarmersMarkets < ActiveRecord::Migration
  def change
    create_table :farmers_markets do |t|
      t.string :city
      t.string :county
      t.string :facebook
      t.string :name
      t.string :state
      t.string :street
      t.string :website
      t.string :zip

      t.timestamps
    end
  end
end
