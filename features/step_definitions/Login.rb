When(/^I select campo "([^"]*)" I insert valor "([^"]*)"$/) do |campo, valor| 
  @LoginPage.insert_data(campo, valor)
end
