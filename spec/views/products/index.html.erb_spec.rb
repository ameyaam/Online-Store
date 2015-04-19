require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :image_path => "Image Path",
        :name => "Name",
        :price => 1.5,
        :FarmersMarket => nil,
        :Category => nil
      ),
      Product.create!(
        :image_path => "Image Path",
        :name => "Name",
        :price => 1.5,
        :FarmersMarket => nil,
        :Category => nil
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
