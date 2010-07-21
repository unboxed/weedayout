Feature: Administering content
  As an administrator
  I want to edit the text on the site
  So that I change what the homepage says

  Background:
    Given the following content blocks exist:
    | key            | text_content         |
    | homepage blurb | this is the homepage |

  Scenario: Edit the content on the homepage
    Given I am logged in
    When I visit "/admin/content_blocks"
    Then I should see "homepage blurb"
    When I follow "edit"
    Then I should see the form filled in like this:
    | key            | homepage blurb       |
    | text content   | this is the homepage |
    When I fill in "text content" with "the new homepage text"
    And I press "submit"
    And I go to the homepage
  	Then I should be on the home page