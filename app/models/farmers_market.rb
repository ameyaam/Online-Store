class FarmersMarket < ActiveRecord::Base
  attr_accessible :city, :county, :facebook, :name, :state, :street, :website, :zip
  validates :city,presence: true
  validates :state,presence: true
  validates :street,presence: true
  validates :name,presence: true
end