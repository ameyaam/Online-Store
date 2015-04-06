require 'rails_helper'

RSpec.describe "FarmersMarkets", :type => :request do
  describe "GET /farmers_markets" do
    it "works! (now write some real specs)" do
      get farmers_markets_path
      expect(response).to have_http_status(200)
    end
  end
end
