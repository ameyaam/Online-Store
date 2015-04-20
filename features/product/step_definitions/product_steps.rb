Given(/^I'm on the product creation page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'products/new'
end

When(/^I add a new product$/) do
  fill_in 'Name', :with => "Garlic"
  fill_in 'Price', :with => "5"
	page.select('abcd', :from => 'product_FarmersMarket_id')
	page.select('Breads', :from => 'product_Category_id')
end

Then(/^I should be able to see the new product's page$/) do
  assert page.has_content?("Edit")
end