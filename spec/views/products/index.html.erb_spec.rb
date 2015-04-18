require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :price => "Price",
        :img_path => "Img Path"
      ),
      Product.create!(
        :name => "Name",
        :price => "Price",
        :img_path => "Img Path"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Img Path".to_s, :count => 2
  end
end
