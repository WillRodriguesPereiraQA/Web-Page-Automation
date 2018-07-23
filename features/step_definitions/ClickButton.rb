When(/^I click on the botao "([^"]*)"$/) do |botao|
@ClickPage.click_element(botao)
end

When(/^It hits the enter$/) do
@Enter.hit_enter
end
