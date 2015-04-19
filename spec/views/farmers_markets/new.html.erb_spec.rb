require 'rails_helper'

RSpec.describe "farmers_markets/new", :type => :view do
  before(:each) do
    assign(:farmers_market, FarmersMarket.new(
      :city => "MyString",
      :county => "MyString",
      :facebook => "MyString",
      :name => "MyString",
      :state => "MyString",
      :street => "MyString",
      :website => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new farmers_market form" do
    render

    assert_select "form[action=?][method=?]", farmers_markets_path, "post" do

      assert_select "input#farmers_market_city[name=?]", "farmers_market[city]"

      assert_select "input#farmers_market_county[name=?]", "farmers_market[county]"

      assert_select "input#farmers_market_facebook[name=?]", "farmers_market[facebook]"

      assert_select "input#farmers_market_name[name=?]", "farmers_market[name]"

      assert_select "input#farmers_market_state[name=?]", "farmers_market[state]"

      assert_select "input#farmers_market_street[name=?]", "farmers_market[street]"

      assert_select "input#farmers_market_website[name=?]", "farmers_market[website]"

      assert_select "input#farmers_market_zip[name=?]", "farmers_market[zip]"
    end
  end
end
