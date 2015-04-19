class Product < ActiveRecord::Base
  belongs_to :FarmersMarket
  belongs_to :Category
  attr_accessible :image_path, :name, :price, :FarmersMarket_id, :Category_id
  validates :name,presence: true
  validates :price,presence: true, numericality: {greater_than: 0, message: "Price has to be greater than zero!"}
  validates :Category,presence: {message: "Category does not exist"}
  validates :FarmersMarket,presence: {message: "FarmersMarket does not exist"}
end