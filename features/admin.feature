Feature: Administering toilets
  As an administrator
  I want and overview of all toilets and the ability to edit their data
  So that I know what toilets are available and to keep the datat up-to-date

  Background:
    Given the following toilets exist:
    | name     | address   | venuetype  | toiletlocation | whocanuse | howtoaccess  | changingbench | hoist | description | long  | lat  |
    | toilet 1 | address 1 | venue 1    | location 1     | use 1     | access 1     | true          | true  | desc 1      | 51.00 | 0.01 |
    | toilet 2 | address 2 | venue 2    | location 2     | use 2     | access 2     | true          | false | desc 2      | 52.00 | 0.02 |
    | toilet 3 | address 3 | venue 3    | location 3     | use 3     | access 3     | false         | true  | desc 3      | 53.00 | 0.03 |
    | toilet 4 | address 4 | venue 4    | location 4     | use 4     | access 4     | false         | false | desc 4      | 54.00 | 0.04 |
    | toilet 5 | address 5 | venue 5    | location 5     | use 5     | access 5     | true          | true  | desc 5      | 55.00 | 0.05 |
    | toilet 6 | address 6 | venue 6    | location 6     | use 6     | access 6     | true          | true  | desc 6      | 56.00 | 0.06 |

  Scenario: View the admin page
    Given I am logged in
    When I go to the admin page
    Then I should see the following text:
    | text     |
    | toilet 1 |
    | toilet 2 |
    | toilet 3 |
    | toilet 4 |
    | toilet 5 |
    | toilet 6 |

