Feature: Cart page

  As a admin 
  so that I can track user carts
  I want to add a new cart to the list

  Scenario: create a cart
    Given I'm on the carts page
    When I create a cart
    Then I should be able to see the created cart's page

  Scenario: Add a product to the cart
    Given I'm on the products page
    When I add a product to the cart and checkout
    Then I should be able to see the product on checkout page

  Scenario: add a cart
    Given I'm on the cart new page
    When I add a new cart
    Then I should be able to see the cart

  Scenario: update a cart
    Given I'm on the carts page
    When I update a cart
    Then I should be able to see the updated cart page

  Scenario: destroy a cart
    Given I'm on the carts page
    When I destroy a cart
    Then I should be able to see the destroyed cart page