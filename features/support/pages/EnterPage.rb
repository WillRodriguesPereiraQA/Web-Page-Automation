class EnterPage

  include Capybara::DSL

  def hit_enter
    page.find('#new_task').native.send_keys(:enter)
  end
end
