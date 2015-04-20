class Category < ActiveRecord::Base

	has_many :Products
	attr_accessible :name
	validates :name,presence: true
end

