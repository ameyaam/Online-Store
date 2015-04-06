require 'rails_helper'

RSpec.describe "farmers_markets/show", :type => :view do
  before(:each) do
    @farmers_market = assign(:farmers_market, FarmersMarket.create!(
      :name => "Name",
      :website => "Website",
      :facebook => "Facebook",
      :street => "Street",
      :city => "City",
      :county => "County",
      :state => "State",
      :zip => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/County/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1/)
  end
end
