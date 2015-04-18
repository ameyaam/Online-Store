class FarmersMarket < ActiveRecord::Base
  attr_accessible :city, :county, :facebook, :name, :state, :street, :website, :zip, :product_id
  validates :name, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
end
