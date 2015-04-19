Given(/^I'm on the farmers market creation page$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  visit 'farmers_markets/new'
end

When(/^I add a new farmers market$/) do
  fill_in 'Name', :with => "Ameya More's Market"
  fill_in 'Street', :with => "4141 Spruce St."
  fill_in 'City', :with => "Philadelphia"
  fill_in 'State', :with => "PA"
  click_button 'Create Farmers market'
end

Then(/^I should be able to see the new farmers market's page$/) do
  assert page.has_content?("Philadelphia")
end

When(/^I add a new farmers market without a name$/) do
  fill_in 'Street', :with => "4141 Spruce St."
  fill_in 'City', :with => "Philadelphia"
  fill_in 'State', :with => "PA"
  click_button 'Create Farmers market'
end

Then(/^I should see some errors on the page1$/) do
  assert page.has_css?('div.field_with_errors')
end

When(/^I add a new farmers market without a street$/) do
  fill_in 'Name', :with => "Ameya More's Market"
  fill_in 'City', :with => "Philadelphia"
  fill_in 'State', :with => "PA"
  click_button 'Create Farmers market'
end

Then(/^I should see some errors on the page2$/) do
  assert page.has_css?('div.field_with_errors')
end

When(/^I add a new farmers market without a city$/) do
  fill_in 'Name', :with => "Ameya More's Market"
  fill_in 'Street', :with => "4141 Spruce St."
  fill_in 'State', :with => "PA"
  click_button 'Create Farmers market'
end

Then(/^I should see some errors on the page3$/) do
  assert page.has_css?('div.field_with_errors')
end