Feature: Adding toilets
  As a user
  I want to add a toilet
  So that I can share my knowledge of disabled toilets
  So that others can find disabled toilets

  Scenario: Successful adding of toilet
    When I go to add toilet page
    And I fill in "Location Name" with "Westminster Bridge"
    And I fill in "Address" with "Westminster Bridge London"
    And I fill in "Venue Type" with "Bridge"
    And I fill in "How to Access" with "Walk onto the bridge"
    And I check "Changing Bench?"
    And I check "Hoist?"
    And I fill in "Toilet Location" with "Left hand rail"
    And I fill in "Who can use" with "Members of Parliament"
    And I select "09:30" as the "Opens at" time
    And I select "16:45" as the "Closes at" time
    And I pass the spam test
    And I press "Submit"
    Then I should see "Toilet created"
    And I should see "Westminster Bridge" inside the recently added facilities list
    And I should see "Westminster Bridge London" inside the recently added facilities list
    When I follow "View Details" inside the recently added facilities list
    Then I should see "Westminster Bridge"
    And I should see "Westminster Bridge London"
    And I should see "Venue Type: Bridge"
    And I should see "How to Access: Walk onto the bridge"
    And I should see "Changing Bench: Yes"
    And I should see "Hoist: Yes"
    And I should see "Toilet Location: Left hand rail"
    And I should see "Who can use: Members of Parliament"
    And I should see "Opening Times: 09:30 — 16:45"

  Scenario: Submitting a blank form
    When I go to add toilet page
    And I pass the spam test
    And I press "Submit"
    Then I should see "2 errors"
    Then I should see "Address can't be blank"
    Then I should see "Name can't be blank"

  Scenario: Adding toilets as a spammer
    When I go to add toilet page
    And I press "Submit"
    Then I should see "It appears you're a spam bot"

  Scenario: Adding toilets as a wily hacker
    When I go to add toilet page
    And I fill in "Location Name" with "W<ul><li>e</li><li>s</li></ul>tminster <h1>Bridge</h1><"
    And I fill in "Address" with "Westmi<script>alert('woo');</script>nster Bridge London"
    And I fill in "Venue Type" with "<span>Bridge</span"
    And I fill in "How to Access" with "Walk <blink>onto</blink> the bridge"
    And I check "Changing Bench?"
    And I check "Hoist?"
    And I fill in "Toilet Location" with "Left hand rail<h1>"
    And I fill in "Who can use" with "Members of Parliament</h1>"
    And I pass the spam test
    And I press "Submit"
    Then I should see "Toilet created"
    And I should see "W<ul><li>e</li><li>s</li></ul>tminster <h1>Bridge</h1><" inside the recently added facilities list
    And I should see "Westmi<script>alert('woo');</script>nster Bridge London" inside the recently added facilities list
    When I follow "View Details" inside the recently added facilities list
    Then I should see "W<ul><li>e</li><li>s</li></ul>tminster <h1>Bridge</h1><"
    And I should see "Westmi<script>alert('woo');</script>nster Bridge London"
    And I should see "Venue Type: <span>Bridge</span"
    And I should see "How to Access: Walk <blink>onto</blink> the bridge"
    And I should see "Toilet Location: Left hand rail<h1>"
    And I should see "Who can use: Members of Parliament</h1>"
