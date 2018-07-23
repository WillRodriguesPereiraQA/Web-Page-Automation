class LoginPage

  include Capybara::DSL

  def insert_data(campo, valor)
      find(EL[campo], wait: 5).set(valor)
  end
end
