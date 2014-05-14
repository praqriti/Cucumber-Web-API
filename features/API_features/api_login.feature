Feature:

	In order to access my profile 
	As an user
	I want to login to the system using my mobile device

Scenario: Verify login from API
	Given I create a new "Owner" with name "first name" email "test_owner@restaurant.com" and phone "1232321"
	Then I should be be able to find the "Owner" with email "test_owner@restaurant.com"
# 	Then User should see the USSD home page

  
# Scenario Outline: Verify Incorrect login details

# 	Given I make a new USSD login request
# 	When User "<USER>" logs into USSD with password "<PASSWORD>"
# 	Then I should be informed that my username and password is incorrect

# 	Examples:
# 	| USER         | PASSWORD     | 
# 	| camfed_today | password_two | 
# 	| camfed_today |              |
# 	|              | password_two |
# 	| camfed_today | password_two |
	
