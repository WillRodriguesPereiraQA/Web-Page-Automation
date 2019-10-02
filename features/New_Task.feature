
Feature: create new task

Background:
  #Given I launch "Avenue Code Page"
  Given I launch "web_site"
  When I select campo "username" I insert valor "wilhelmcallas@gmail.com"
  And I select campo "password" I insert valor "will1234"
  And I click on the botao "login_button"
  Then I click on the botao "my_tasks"

@validate_ToDo_List
Scenario: validate ToDo list
Then I can see the correct ToDo List text

@validate_Add_Button
Scenario: validate add task
When I fill the campo "new_task_field" with the valor "Test Automation I"
And I click on the botao "add_newtask"
Then I am able to validate the new task on the tasks list

@validate_Enter
Scenario: validate add with enter
When I fill the campo "new_task_field" with valor "Test Automation II"
And It hits the enter
Then I am able to validate the new task II on the tasks list

@validate_newtask_more_250characters
Scenario: adding newtask more than 250 characters
And I click on the botao "manage_subtasks"
When I fill the campo "subtask_description" with the valor "I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller.."
And I fill the campo "Date" with the valor "22/07/2018"
And I click on the botao "subtask_add"
Then I am able to see error message

