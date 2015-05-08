class HomeController < ApplicationController
  def index
  	@farmers_markets = FarmersMarket.select(:city)
  	distinct_cities = []
  	@farmers_markets.each do |market|
  		if(!distinct_cities.include?(market.city))
  			distinct_cities.insert(-1, market.city)
  		end
  	end
  	@farmers_markets = distinct_cities
  end
end
