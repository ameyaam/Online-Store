require 'rails_helper'

RSpec.describe "products/show", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :image_path => "Image Path",
      :name => "Name",
      :price => 1.5,
      :FarmersMarket => nil,
      :Category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image Path/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
