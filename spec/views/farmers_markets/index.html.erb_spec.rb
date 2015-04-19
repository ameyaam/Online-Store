require 'rails_helper'

RSpec.describe "farmers_markets/index", :type => :view do
  before(:each) do
    assign(:farmers_markets, [
      FarmersMarket.create!(
        :city => "City",
        :county => "County",
        :facebook => "Facebook",
        :name => "Name",
        :state => "State",
        :street => "Street",
        :website => "Website",
        :zip => "Zip"
      ),
      FarmersMarket.create!(
        :city => "City",
        :county => "County",
        :facebook => "Facebook",
        :name => "Name",
        :state => "State",
        :street => "Street",
        :website => "Website",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of farmers_markets" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
