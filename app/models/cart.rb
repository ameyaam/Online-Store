class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :FarmerMarkets
  has_many :Products
  attr_accessible :user_id, :FarmersMarket_id, :Product_id
  validates :user,presence: {message: "User does not exist"}
end
