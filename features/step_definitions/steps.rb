Given(/^I'm on the farmers market creation page$/) do
  visit(new_farmers_market_path)
end

When(/^I add a new farmers market$/) do
  fill_in 'Name', :with => "Ameya More's Market"
  fill_in 'Street', :with => "4141 Spruce St."
  fill_in 'City', :with => "Philadelphia"
  fill_in 'State', :with => "PA"
  click_button 'Create Farmers market'
end

Then(/^I should be able to see the new farmers market's page$/) do
  assert page.has_content?("Farmers market was successfully created")
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