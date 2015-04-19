Feature: Cart page

  As a admin 
  so that I can track user carts
  I want to add a new cart to the list

  Scenario: Add a cart
    Given I'm on the cart creation page
    When I add a new cart
    Then I should be able to see the new cart's page