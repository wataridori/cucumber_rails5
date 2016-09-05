Given /^I am on "(.+)"$/ do |page_path|
  visit page_path
end

When /^I fill in "(.+)" with "(.+)"$/ do |field, value|
  fill_in(field, with: value)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.has_content? text
end
