@javascript
Feature:

  In order to control the admin functionality
  As an admin
  I want to login to the system
  
  Scenario: login to canvas as a user using CAS

  When User is on the Sign In page
  And User "camfed_user" logs into Canvas with her credentials
  Then User logs out
  
  @manual
  Scenario: User has a valid email id , he must recieve a mail on registration
  
