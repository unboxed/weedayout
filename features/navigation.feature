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
	
	
	Scenario: The footer bar
		Given I am on the homepage
		When I follow "Home" inside the footer bar
		Then I should be on the homepage
		
		When I follow "About" inside the footer bar
		Then I should be on the about us page
		
		When I follow "Add a facility" inside the footer bar
		Then I should be on the add toilet page

		 Given the following toilets exist:
	    | name     | address   | venuetype  | toiletlocation | whocanuse | howtoaccess  | changingbench | hoist | description | long  | lat  |
	    | toilet 1 | address 1 | venue 1    | location 1     | use 1     | access 1     | true          | false | desc 1      | 51.00 | 0.01 |
		When I follow "Find a facility" inside the footer bar
		Then I should be on the toilet home page