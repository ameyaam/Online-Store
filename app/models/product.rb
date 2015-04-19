class Product < ActiveRecord::Base
  belongs_to :FarmersMarket
  belongs_to :Category
  attr_accessible :image_path, :name, :price, :FarmersMarket_id, :Category_id
end
