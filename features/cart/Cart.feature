Feature: Cart Functionality

  As a user 
  so that I can add product to the cart
  I want to add a new product to the cart

  Scenario: Add a product to the cart
    Given I'm on the products page
    When I add a product to the cart and checkout
    Then I should be able to see the product on checkout page