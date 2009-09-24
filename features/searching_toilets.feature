Feature: Searching Toilets
  As a user
  I want to be able to search for toilets
  So that I can find disabled toilets
  
  Scenario: Empty search
    Given a valid toilet called "Westminster Bridge"
    And a valid toilet called "Lambeth Bridge"
    And a valid toilet called "London Bridge"
    When I go to the homepage
    And I press "Search"
    Then I should see "Type a location to find toilets"
