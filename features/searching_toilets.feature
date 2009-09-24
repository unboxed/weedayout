Feature: Searching Toilets
  As a user
  I want to be able to search for toilets
  So that I can find disabled toilets
  
  Scenario: Empty search
    Given a valid toilet called "Westminster Bridge"
    And a valid toilet called "Lambeth Bridge"
    When I go to the homepage
    And I press "Search"
    Then I should see "Type a location to find toilets"

  Scenario: Finding the 5 nearest toilets to a location
    Given a valid toilet called "Westminster Bridge"
    And the toilet "Westminster Bridge" is located at 51.58, 0.02
    And a valid toilet called "Jubilee Bridge"
    And the toilet "Jubilee Bridge" is located at 56.58, 0.02
    And a valid toilet called "Lambeth Bridge"
    And the toilet "Lambeth Bridge" is located at 52.58, 0.02
    And a valid toilet called "London Bridge"
    And the toilet "London Bridge" is located at 53.58, 0.02
    And a valid toilet called "Tower Bridge"
    And the toilet "Tower Bridge" is located at 54.58, 0.02
    And a valid toilet called "Waterloo Bridge"
    And the toilet "Waterloo Bridge" is located at 55.58, 0.02
    And geokit will return 51.5754841, 0.0088174 when passed "E11 1PB"
    When I go to the homepage
    And I fill in "Location" with "E11 1PB"
    And I press "Search"
    Given a valid toilet called "Westminster Bridge"
    Then I should see "Lambeth Bridge"
    And I should see "London Bridge"
    And I should see "Tower Bridge"
    And I should see "Waterloo Bridge"
    And I should not see "Jubilee Bridge"
