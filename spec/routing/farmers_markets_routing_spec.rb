require "rails_helper"

RSpec.describe FarmersMarketsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/farmers_markets").to route_to("farmers_markets#index")
    end

    it "routes to #new" do
      expect(:get => "/farmers_markets/new").to route_to("farmers_markets#new")
    end

    it "routes to #show" do
      expect(:get => "/farmers_markets/1").to route_to("farmers_markets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/farmers_markets/1/edit").to route_to("farmers_markets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/farmers_markets").to route_to("farmers_markets#create")
    end

    it "routes to #update" do
      expect(:put => "/farmers_markets/1").to route_to("farmers_markets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/farmers_markets/1").to route_to("farmers_markets#destroy", :id => "1")
    end

  end
end
