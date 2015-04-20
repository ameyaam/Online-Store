Given(/^I'm on the category creation page$/) do
email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'categories/new'
end

When(/^I add a new category$/) do
  fill_in 'Name', :with => "Milk"
end

Then(/^I should be able to see the new categories' page$/) do
  assert page.has_content?("Edit")
end