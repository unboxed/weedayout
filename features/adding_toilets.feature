Feature: Adding toilets
  As a user
  I should be able to add a toilet
  So that I can share my knowledge of disabled toilets
  So that others can find disabled toilets
  
  Scenario: Successful adding of toilet
    When I go to add toilet page
    And I fill in "Name" with "Westminster Bridge"
    And I fill in "Address" with "Westminster Bridge London"
    And I fill in "Venue Type" with "Bridge"
    And I fill in "How to access" with "Walk onto the bridge"
    And I check "Changing Bench?"
    And I check "Hoist?"
    And I fill in "Toilet Location" with "Left hand rail"
    And I fill in "Who can use" with "Members of Parliament"
    And I fill in "Description" with "It's a bridge"
    And I fill in "Latitude" with "0.0003"
    And I fill in "Longitude" with "52.9376"
    And I pass the spam test
    And I press "Create"
    Then I should see "Toilet created"
  
  Scenario: Submitting a blank form
    When I go to add toilet page
    And I pass the spam test
    And I press "Create"
    Then I should see "4 errors"
    Then I should see "Address can't be blank"
    Then I should see "Name can't be blank"

  Scenario: Adding toilets as a spammer
    When I go to add toilet page
    And I press "Create"
    Then I should see "It appears you're a spam bot"
    