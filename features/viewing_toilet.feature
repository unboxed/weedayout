Feature: Viewing Toilets
  As a user
  I want to be able to view details of a particular toilet
  So that I can easily read all the details on how to access a particular toilet

  Background:
    Given the following toilets exist:
    | name     | address   | venuetype  | toiletlocation | whocanuse | howtoaccess  | changingbench | hoist | description | long  | lat  |
    | toilet 1 | address 1 | venue 1    | location 1     | use 1     | access 1     | true          | false | desc 1      | 51.00 | 0.01 |
    | toilet 2 | address 2 | venue 2    | location 2     | use 2     | access 2     | true          | false | desc 2      | 52.00 | 0.02 |
    And geokit will return 51.0000, 0.0000


  Scenario: Search for a toilet and see all it's details
    When I go to the homepage
    And I fill in "location" with "some place"
    And I press "Search"
    Then I should see "toilet 1"
    When I follow "details_link_1"
    Then I should see the following table "toilet_details":
    | Name:            | toilet 1            |
    | Address:         | address 1           |
    | Venue type:      | venue 1             |
    | Toilet Location: | location 1          |
    | Who can use:     | use 1               |
    | How to access:   | access 1            |
    | Changing bench:  | has changing bench  |
    | Hoist:           | does not have hoist |
    | Description:     | desc 1              |
    | Longitude:       | 51.00               |
    | Latitude:        | 0.01                |

  Scenario: Check that toilet details pages have seo urls
    When I go to the homepage
    And I fill in "location" with "some place"
    And I press "Search"
    When I follow "details_link_2"
    Then my url should end with "toilet-2"
