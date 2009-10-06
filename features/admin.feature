Feature: Administering toilets
  As an administrator
  I want and overview of all toilets and the ability to edit their data
  So that I know what toilets are available and to keep the data up-to-date

  Background:
    Given the following toilets exist:
    | name      | address   | venuetype  | toiletlocation | whocanuse | howtoaccess  | changingbench | hoist | description | long  | lat  |
    | toilet 02 | address 2 | venue 2    | location 2     | use 2     | access 2     | true          | false | desc 2      | 52.00 | 0.02 |
    | toilet 03 | address 3 | venue 3    | location 3     | use 3     | access 3     | false         | true  | desc 3      | 53.00 | 0.03 |
    | toilet 04 | address 4 | venue 4    | location 4     | use 4     | access 4     | false         | false | desc 4      | 54.00 | 0.04 |
    | toilet 01 | address 1 | venue 1    | location 1     | use 1     | access 1     | true          | true  | desc 1      | 51.00 | 0.01 |

  Scenario: View the admin page, toilets should be sorted by name and all data should be present
    Given I am logged in
    When I go to the admin page
    Then I should see the "#results" table like this:
    | name      | address   | venue type | toilet location | who can use | how to access | changing bench | hoist | description | longitude  | latitude  |
    | toilet 01 | address 1 | venue 1    | location 1      | use 1       | access 1      | true           | true  | desc 1      | 51.00      | 0.01      |
    | toilet 02 | address 2 | venue 2    | location 2      | use 2       | access 2      | true           | false | desc 2      | 52.00      | 0.02      |
    | toilet 03 | address 3 | venue 3    | location 3      | use 3       | access 3      | false          | true  | desc 3      | 53.00      | 0.03      |
    | toilet 04 | address 4 | venue 4    | location 4      | use 4       | access 4      | false          | false | desc 4      | 54.00      | 0.04      |

  Scenario: The admin page should paginate if there are too many toilets
    Given the following toilets exist:
    | name      | address    | long  | lat  |
    | toilet 05 | address 5  | 55.00 | 0.05 |
    | toilet 06 | address 6  | 56.00 | 0.06 |
    | toilet 07 | address 7  | 57.00 | 0.07 |
    | toilet 08 | address 8  | 58.00 | 0.08 |
    | toilet 09 | address 9  | 59.00 | 0.09 |
    | toilet 10 | address 10 | 60.00 | 0.10 |
    | toilet 11 | address 11 | 61.00 | 0.11 |
    And I am logged in
    When I go to the admin page
    Then I should see the following text:
    | text      |
    | toilet 01 |
    | toilet 02 |
    | toilet 03 |
    | toilet 04 |
    | toilet 05 |
    | toilet 06 |
    | toilet 07 |
    | toilet 08 |
    | toilet 09 |
    | toilet 10 |
    And I should not see "toilet 11"
    When I follow "Next »"
    Then I should see "toilet 11"
    And I should not see "toilet 2"
