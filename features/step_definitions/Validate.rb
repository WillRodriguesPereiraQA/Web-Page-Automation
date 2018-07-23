Then(/^I can see the correct ToDo List text$/) do
@ValidatePage.check_text
end

Then(/^I am able to validate the new task on the tasks list$/) do
  @ValidatePage.check_new_task
end

Then(/^I am able to validate the new task II on the tasks list$/) do
  @ValidatePage.check_new_task_II
end

When(/^I am able to validate the subtask item$/) do
  @ValidatePage.check_subtask
end

Then(/^I am able to see error message$/) do
  @ValidatePage.check_error
end
