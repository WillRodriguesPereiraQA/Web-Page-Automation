class ValidatePage

  #include RSpec::Matchers
  include Capybara::DSL

  def check_text
    if has_text?("Hey Willian Pereira, this is your todo list for today:")
      p "SUCESS"
    elsif has_text?("Willian Pereira's ToDo List")
      p "FAILED"
  end
 end

 def check_new_task
   if has_text?("Test Automation I")
     p "SUCESS"
  end
 end

 def check_new_task_II
   if has_text?("Test Automation II")
     p "SUCESS"
  end
 end

def check_subtask
 if has_text?("I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller..")
   p "SUCESS"
end
end

def check_error
 find('error').text
 end
end
