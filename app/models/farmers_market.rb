class FarmersMarket < ActiveRecord::Base
  attr_accessible :city, :county, :facebook, :name, :state, :street, :website, :zip
end