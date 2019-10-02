#Given(/^I launch "([^"]*)"$/) do |arg1|
 # visit 'https://qa-test.avenuecode.com/users/sign_in'
#end

Given(/^I launch "([^"]*)"$/) do |site|
  @SitePage.acess_site(site)
end