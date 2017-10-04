Feature: Testing protocol CRUD operations
  As an operator
  I want to be able to add, delete, and modify testing protocols
  so that I have the most up to date testing protocols

Background: 
  Given I am an authenticated user
  When I follow "Test"
  And I press "Test Name"
  And I select "edit protocol"

Scenario: Edit a test protocol
  When I select "edit" for "test"
  Then I should see the "test" form filled in
  When I fill in "protocol_tp1" wiht "0.015"
  And I press "Update"
  Then I should see "Test protocol updated"