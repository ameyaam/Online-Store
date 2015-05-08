Feature: Cart page

  As a admin 
  so that I can track products
  I want to add a new product to the list

  Scenario: Add a product
    Given I'm on the product creation page
    When I add a new product
    Then I should be able to see the new product's page

  Scenario: update a product
    Given I'm on the product page
    When I update a product
    Then I should be able to see the update product's page

  Scenario: delete a product
    Given I'm on the product page
    When I delete a product
    Then I should be able to see the deleted product's page