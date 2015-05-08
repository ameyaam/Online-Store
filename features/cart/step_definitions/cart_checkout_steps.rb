Given(/^I'm on the products page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  Product.new(:image_path => "", :name => "Milk", :price => "5", :FarmersMarket_id => "1", :Category_id => "1").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'categories/1/get_categories'
  click_link "Show Products"
end

When(/^I add a product to the cart and checkout$/) do
  
	#find(:xpath, '//button[@id="1"]').click
  #page.driver.post('carts/add_to_cart', {:product_id => "1", :quantity => "1"})
  click_link "checkout"
  
end

Then(/^I should be able to see the product on checkout page$/) do
  assert page.has_content?("bill")
end