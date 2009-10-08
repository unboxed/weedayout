Feature: Searching Toilets
  As a user
  I want to be able to search for toilets
  So that I can find disabled toilets

  Background:
    Given the following toilets exist:
    | name               | address        | long  | lat  |
    | Westminster Bridge | close          | 51.58 | 0.02 |
    | Jubilee Bridge     | 5 degrees away | 56.58 | 0.02 |
    | Lambeth Bridge     | 1 degree  away | 52.58 | 0.02 |
    | London Bridge      | 2 degrees away | 53.58 | 0.02 |
    | Tower Bridge       | 3 degrees away | 54.58 | 0.02 |
    | Waterloo Bridge    | 4 degrees away | 55.58 | 0.02 |
    And geokit will return 51.5754841, 0.0088174 when passed "E11 1PB"
  
  Scenario: Empty search
    Given a valid toilet called "Westminster Bridge"
    And a valid toilet called "Lambeth Bridge"
    When I go to the homepage
    And I press "Search"
    Then I should see "Type a location to find toilets"

  Scenario: Finding the 3 nearest toilets to a location in distance order
    When I go to the homepage
    And I fill in "Location" with "E11 1PB"
    And I press "Search"
    Then I should not see "Jubilee Bridge"
    And I should not see "Tower Bridge"
    And I should not see "Waterloo Bridge"
    And I should see the following elements with content:
    | #row_1  | Westminster Bridge  |
    | #row_2  | Lambeth Bridge      |
    | #row_3  | London Bridge       |
    And the "Location" field should contain "E11 1PB"


  Scenario: Finding the 3 nearest toilets that have a hoist
    Given the toilet "Jubilee Bridge" has a hoist
    When I go to the homepage
    And I fill in "Location" with "E11 1PB"
    And I check "Has a hoist"
    And I press "Search"
    Then I should not see "Lambeth Bridge"
    And I should not see "London Bridge"
    And I should not see "Tower Bridge"
    And I should not see "Waterloo Bridge"
    And I should see "Jubilee Bridge"

  Scenario: Finding the 3 nearest toilets that have a changing bench
    Given the toilet "Jubilee Bridge" has a changing bench
    When I go to the homepage
    And I fill in "Location" with "E11 1PB"
    And I check "Changing Bench"
    And I press "Search"
    Then I should not see "Lambeth Bridge"
    And I should not see "London Bridge"
    And I should not see "Tower Bridge"
    And I should not see "Waterloo Bridge"
    And I should see "Jubilee Bridge"

  Scenario: Finding the 3 nearest toilets that have a changing bench and a hoist
    Given the toilet "Jubilee Bridge" has a hoist
    Given the toilet "Jubilee Bridge" has a changing bench
    Given the toilet "Westminster Bridge" has a hoist
    Given the toilet "Waterloo Bridge" has a changing bench
    When I go to the homepage
    And I fill in "Location" with "E11 1PB"
    And I check "Changing Bench"
    And I check "Has a hoist"
    And I press "Search"
    Then I should not see "Lambeth Bridge"
    And I should not see "London Bridge"
    And I should not see "Tower Bridge"
    And I should not see "Waterloo Bridge"
    And I should see "Jubilee Bridge"
