class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :FarmersMarket
  has_many :Product
  attr_accessible :FarmersMarket_id, :Product_id, :quantity, :user_id
end
