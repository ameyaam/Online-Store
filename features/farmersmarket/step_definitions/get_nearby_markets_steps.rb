Given(/^I'm on the login page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  FarmersMarket.new(:city => "Philadelphia", :county => "test", :name => "abcd", :state => "PA", :street => "Chestnut street").save!
  Category.new(:name => "Breads").save!
  Product.new(:name => "Garlic", :price => "5", :FarmersMarket_id => "1", :Category_id => "1").save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
end

When(/^I select a city$/) do
  click_link "Philadelphia"
end

Then(/^I should be able to see the nearby farmers markets page$/) do
  assert page.has_content?("Philadelphia")
end