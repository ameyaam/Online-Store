require 'rails_helper'

RSpec.describe "carts/show", :type => :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :user => nil,
      :Product => "",
      :FarmersMarket => "",
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
