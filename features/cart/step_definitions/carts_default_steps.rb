Given(/^I'm on the carts page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  Product.new(:name => "Garlic", :price => "5", :FarmersMarket_id => "1", :Category_id => "1").save!
  Cart.new(:FarmersMarket_id => "1", :Product_id => "1", :quantity => "1", :user_id => "1").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'carts'
end

When(/^I update a cart$/) do
  click_link "Edit"
  fill_in 'cart_quantity', :with => "3"
  find(:xpath, '//input[@value="Update Cart"]').click
end

Then(/^I should be able to see the updated cart page$/) do
  assert page.has_content?("3")
end

When(/^I destroy a cart$/) do
  click_link "Destroy"
end

Then(/^I should be able to see the destroyed cart page$/) do
  assert page.has_content?("carts")
end

When(/^I create a cart$/) do
  page.driver.post('/carts', {:FarmersMarket_id => "1", :Product_id => "1", :quantity => "1", :user_id => "1"})
end

Then(/^I should be able to see the created cart's page$/) do
  p page.text
  assert page.has_content?("redirected")
end