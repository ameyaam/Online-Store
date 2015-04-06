require 'rails_helper'

RSpec.describe "farmers_markets/index", :type => :view do
  before(:each) do
    assign(:farmers_markets, [
      FarmersMarket.create!(
        :name => "Name",
        :website => "Website",
        :facebook => "Facebook",
        :street => "Street",
        :city => "City",
        :county => "County",
        :state => "State",
        :zip => 1
      ),
      FarmersMarket.create!(
        :name => "Name",
        :website => "Website",
        :facebook => "Facebook",
        :street => "Street",
        :city => "City",
        :county => "County",
        :state => "State",
        :zip => 1
      )
    ])
  end

  it "renders a list of farmers_markets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
