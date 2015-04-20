class FarmersMarket < ActiveRecord::Base

  has_many :Products
  attr_accessible :city, :county, :facebook, :name, :state, :street, :website, :zip
  validates :city,presence: true
  validates :state,presence: true
  validates :street,presence: true
  validates :name,presence: true
end
