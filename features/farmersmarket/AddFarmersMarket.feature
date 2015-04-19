Feature: FarmersMarkets page

  As a admin 
  so that I can track my farmers markets
  I want to add a new farmers market to the list

  Scenario: Add a farmers market
    Given I'm on the farmers market creation page
    When I add a new farmers market
    Then I should be able to see the new farmers market's page
    
  Scenario: Add a farmers market without name
    Given I'm on the farmers market creation page
    When I add a new farmers market without a name
    Then I should see some errors on the page1

  Scenario: Add a farmers market without street
    Given I'm on the farmers market creation page
    When I add a new farmers market without a street
    Then I should see some errors on the page2

  Scenario: Add a farmers market without city
    Given I'm on the farmers market creation page
    When I add a new farmers market without a city
    Then I should see some errors on the page3