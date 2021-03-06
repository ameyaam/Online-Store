require 'rails_helper'

RSpec.describe "carts/edit", :type => :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :user => nil,
      :Product => "",
      :FarmersMarket => "",
      :quantity => 1
    ))
  end

  it "renders the edit cart form" do
    render

    assert_select "form[action=?][method=?]", cart_path(@cart), "post" do

      assert_select "input#cart_user[name=?]", "cart[user]"

      assert_select "input#cart_Product[name=?]", "cart[Product]"

      assert_select "input#cart_FarmersMarket[name=?]", "cart[FarmersMarket]"

      assert_select "input#cart_quantity[name=?]", "cart[quantity]"
    end
  end
end
