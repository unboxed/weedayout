Feature: Editing toilets
  As a user
  I should be able to edit a toilet
  So that I can share my knowledge of disabled toilets
  So that others can find disabled toilets
  
  Background:
    Given the following toilets exist:
    | name      | address   | venuetype  | toiletlocation | whocanuse | howtoaccess  | changingbench | hoist | description | long  | lat  | opening_time | closing_time |
    | toilet 02 | address 2 | venue 2    | location 2     | use 2     | access 2     | true          | false | desc 2      | 52.00 | 0.02 | 09:30        | 16:45        |
    | toilet 03 | address 3 | venue 3    | location 3     | use 3     | access 3     | false         | true  | desc 3      | 53.00 | 0.03 | 12:20        | 22:30        |
    | toilet 04 | address 4 | venue 4    | location 4     | use 4     | access 4     | false         | false | desc 4      | 54.00 | 0.04 | 05:00        | 10:00        |
    | toilet 01 | address 1 | venue 1    | location 1     | use 1     | access 1     | true          | true  | desc 1      | 51.00 | 0.01 | 16:45        | 07:30        |
  
    Scenario: Visit the edit page
      Given I visit "/toilets/toilet-01/edit"
      Then I should see the form filled in like this:
      | location name   | toilet 01           |
      | address         | address 1           |
      | venue type      | venue 1             |
      | toilet location | location 1          |
      | who can use     | use 1               |
      | how to access   | access 1            |
      | changing bench  | true                |
      | hoist           | true                |
      And I should see "16:45" as the "Opens at" time
      And I should see "07:30" as the "Closes at" time
      When I fill in the following:
      | location name   | toilet A            |
      | address         | address A           |
      | venue type      | venue A             |
      | toilet location | location A          |
      | who can use     | use A               |
      | how to access   | access A            |
      | changing bench  | false               |
      | hoist           | true                |
      And I select "10:30" as the "Opens at" time
      And I select "21:15" as the "Closes at" time
      And I press "Submit"
      Then I should see the form filled in like this:
      | location name   | toilet A            |
      | address         | address A           |
      | venue type      | venue A             |
      | toilet location | location A          |
      | who can use     | use A               |
      | how to access   | access A            |
      | changing bench  | false               |
      | hoist           | true                |
      And I should see "10:30" as the "Opens at" time
      And I should see "21:15" as the "Closes at" time
      And I should see "Toilet updated"
      