
Feature: create new subtask

Background:
Given I launch "Avenue Code Page"
When I select campo "username" I insert valor "wilhelmcallas@gmail.com"
And I select campo "password" I insert valor "will1234"
And I click on the botao "login_button"
Then I click on the botao "my_tasks"


@validate_adding_subtask
Scenario: adding subtask
And I click on the botao "manage_subtasks"
When I fill the campo "subtask_description" with the valor "I should be able to create a subtask, So I can break down my tasks in smaller pieces."
And I fill the campo "Date" with the valor "22/07/2018"
And I click on the botao "subtask_add"
Then I am able to validate the subtask item

@validate_subtask_more_251characters
Scenario: adding subtask more than 250 characters
And I click on the botao "manage_subtasks"
When I fill the campo "subtask_description" with the valor "I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller.."
And I fill the campo "Date" with the valor "22/07/2018"
And I click on the botao "subtask_add"
Then I am able to see error message

@validate_without_description
Scenario: without description
And I click on the botao "manage_subtasks"
And I fill the campo "Date" with the valor "22/07/2018"
And I click on the botao "subtask_add"
Then I am able to see error message

@validate_without_date
Scenario: without date
And I click on the botao "manage_subtasks"
When I fill the campo "subtask_description" with the valor "I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller pieces. I should be able to create a subtask, So I can break down my tasks in smaller.."
And I click on the botao "subtask_add"
Then I am able to see an error message
