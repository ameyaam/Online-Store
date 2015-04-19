Feature: Category page

	As a admin 
  	so that I can track categories
  	I want to add a new category to the list

Scenario: Add a category
    Given I'm on the category creation page
    When I add a new category
    Then I should be able to see the new categories' page