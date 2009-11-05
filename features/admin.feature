Feature: Administering toilets
  As an administrator
  I want a central place to administer weedayot
  So that I can get to the toilets admin and content admin

  Scenario: View the admin page, there should be a link to toilets admin
    Given I am logged in
    When I visit "/admin"
    And I follow "Manage Toilets"
    Then I should see a page title of: "Toilets Admin"

  Scenario: View the admin page, there should be a link to content admin
    Given I am logged in
    When I visit "/admin"
    And I follow "Manage Content"
    Then I should see a page title of: "Content Admin"
