Feature: Testing protocol CRUD operations
  As an operator
  I want to be able to delete testing protocols
  so that I can remove antiquated protocols

Background: 
  Given I am an authenticated user
  When I follow "Test"
  And I press "Test Name"
  And I select "delete protocol"

Scenario: Delete a test protocol
  When I select "delete" for "test"
  Then I should see "protocol deleted"
  When I press the "test protocol" button 
  Then I should not see "test"