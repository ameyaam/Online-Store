Given(/^I'm on the category page$/) do
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
  visit 'categories'
end

When(/^I update a category$/) do
  click_link "Edit"
  fill_in 'Name', :with => "Garlic"
  find(:xpath, '//input[@value="Update Category"]').click
end

Then(/^I should be able to see the update category's page$/) do
  assert page.has_content?("Garlic")
end

When(/^I delete a category$/) do
  click_link "Destroy"
end

Then(/^I should be able to see the deleted category's page$/) do
  assert page.has_content?("categories")
end