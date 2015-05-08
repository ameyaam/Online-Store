Feature: Products page

  As a user 
  so that I can buy products
  I want to browse through products of a farmers market

  Scenario: get product list
    Given I'm on the categories page
    When I select a category
    Then I should be able to see the products of that farmers market