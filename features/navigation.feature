Feature:
  In order to navigate the site
  As a user
  I can navigate to the main site pages through a main nav
  
  
  Scenario: User clicks through links 
  Given I am on the home page
  And I follow "Add a Facility"
  Then I should be on the add toilet page
  And I follow "Home"
  Then I should be on the home page

	When I follow "About Us"
	Then I should be on the about us page