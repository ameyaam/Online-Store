require 'rails_helper'

RSpec.describe "carts/new", :type => :view do
  before(:each) do
    assign(:cart, Cart.new(
      :user => nil,
      :Product => "",
      :FarmersMarket => "",
      :quantity => 1
    ))
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", carts_path, "post" do

      assert_select "input#cart_user[name=?]", "cart[user]"

      assert_select "input#cart_Product[name=?]", "cart[Product]"

      assert_select "input#cart_FarmersMarket[name=?]", "cart[FarmersMarket]"

      assert_select "input#cart_quantity[name=?]", "cart[quantity]"
    end
  end
end
