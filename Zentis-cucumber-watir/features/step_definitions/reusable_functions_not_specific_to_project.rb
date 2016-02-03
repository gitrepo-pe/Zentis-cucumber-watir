# To change this template, choose Tools | Templates
# and open the template in the editor.

Given(/^I should visit saleforce website$/) do
    @browser.goto "https://login.salesforce.com/"
end

Then(/^I should see "([^"]*)" image$/) do |image|
  @browser.image(:id => image).visible?
end

Then(/^I should see "([^"]*)" link$/) do |link|
  @browser.link(:text => link).visible?
end

When(/^I fill "([^"]*)" as "([^"]*)"$/) do |attribute, value|
  @browser.text_field(:id,attribute).set(value)
end

When(/^I should click on "([^"]*)" button$/) do |buttontext|
  @browser.button(:text, buttontext).click
end

When(/^I wait for "([^"]*)" seconds$/) do |wait|
  sleep(wait.to_i)
end

Given(/^I should land on salesforce application homepage$/) do
  step 'I should visit saleforce website'
  step 'I fill "username" as "qa-renewnetops-csmdev19@servicesource.com"'
  step 'I fill "password" as "pass@word1"'
  step 'I should click on "Log In" button'
end

When(/^I follow "([^"]*)" link$/) do |link|
  puts @browser.link(:text, link).visible?
  @browser.link(:text, link).click
end

Then(/^I should see "([^"]*)"$/) do |content|
  if @browser.text.include? content
   puts "true"
else
   puts "exception"
 end
end