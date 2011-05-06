Feature: Random fortune
		 In order to receive enlightenment
		 As a depressed person
		 I want to be given random fortunes

		 Scenario: Get a fortune
		 		   Given I am on fortunes
				   Then I should see a fortune

		 Scenario: Get a new fortune
		 		   Given I am on fortunes
				   When I press "New Fortune"
				   Then I should see a fortune