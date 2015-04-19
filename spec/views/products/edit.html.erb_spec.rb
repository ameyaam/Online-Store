require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :image_path => "MyString",
      :name => "MyString",
      :price => 1.5,
      :FarmersMarket => nil,
      :Category => nil
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_image_path[name=?]", "product[image_path]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_FarmersMarket[name=?]", "product[FarmersMarket]"

      assert_select "input#product_Category[name=?]", "product[Category]"
    end
  end
end
