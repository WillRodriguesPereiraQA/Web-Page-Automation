When(/^I fill the campo "([^"]*)" with the valor "([^"]*)"$/) do |campo, valor|
  @FillPage.clicar_inserir_valor(campo, valor)
end
