class Cart < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :FarmersMarket_id, :Product_id
end
