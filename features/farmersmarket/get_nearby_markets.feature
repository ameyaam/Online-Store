Feature: get_nearby_farmers markets

  As a user 
  so that I can track see farmers markets
  I want to get a farmers market to the list

  Scenario: get nearby farmers market
    Given I'm on the login page
    When I select a city
    Then I should be able to see the nearby farmers markets page