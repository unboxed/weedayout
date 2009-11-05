Feature: Homepage
  As a user
  I want to be able to search for toilets from the homepage
  So that I can find disabled toilets
  I want to be add toilets from the homepage
  So that I can contribute to others

  Background:
    Given the following toilets exist:
    | name               | address        | long  | lat  |
    | Westminster Bridge | close          | 51.58 | 0.02 |
    | Lambeth Bridge     | 1 degree  away | 52.58 | 0.02 |
    | London Bridge      | 2 degrees away | 53.58 | 0.02 |
    | Tower Bridge       | 3 degrees away | 54.58 | 0.02 |
    And geokit will return 51.5754841, 0.0088174

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

  Scenario: Homepage should have a "Add a Toilet" link
    When I go to the homepage
    And I follow "Add a Toilet"
    Then I should see "New toilet"
