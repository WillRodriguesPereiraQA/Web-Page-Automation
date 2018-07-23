class ClickPage

  include Capybara::DSL

  def click_element(botao)
    find(EL[botao]).click
  end
end
