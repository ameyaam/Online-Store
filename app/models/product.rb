class Product < ActiveRecord::Base
  attr_accessible :img_path, :name, :price
end
