Given(/^I'm on the cart creation page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  Product.new(:image_path => "", :name => "Garlic", :price => "5", :FarmersMarket_id => "1", :Category_id => "1").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'carts/new'
end

When(/^I add a new cart$/) do
	page.select('testing@man.net', :from => 'cart_user_id')
	page.select('abcd', :from => 'cart_FarmersMarket_id')
	page.select('Garlic', :from => 'cart_Product_id')
end

Then(/^I should be able to see the new cart's page$/) do
  assert page.has_content?("Edit")
end