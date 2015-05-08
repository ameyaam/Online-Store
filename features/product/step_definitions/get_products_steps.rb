Given(/^I'm on the categories page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'categories/12/get_categories'
end

When(/^I select a category$/) do
  click_link "Show Products"
end

Then(/^I should be able to see the products of that farmers market$/) do
  assert page.has_content?("Listing products")
end