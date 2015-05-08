Feature: Cart Functionality

  As a user 
  so that I can add product to the cart
  I want to add a new product to the cart

  Scenario: add to cart
    Given I'm on the products page
    When I add item to a cart
    Then I should be able to see the added item in cart