class FillPage

  include Capybara::DSL

  def clicar_inserir_valor(campo, valor)
    #execute_script("arguments[0].scrollIntoView();",all(EL[campo])[0])
    assert_selector(EL[campo], wait: 20, visible:true)
    find(EL[campo], wait: 15).set(valor)
  end
  
  def click_insert(field, value)
    find('#new_task').set("Test Automation")
  end
end
