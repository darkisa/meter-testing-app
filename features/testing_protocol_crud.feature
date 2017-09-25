Feature: Testing protocol CRUD operations
  As an operator
  I want to be able to add, delete, and modify testing protocols
  so that I have the most up to date testing protocols

Background: 
  Given I am an authenticated user
  When I follow "Test"
  Then I should see the "test protocol" dropdown

Scenario: Add a new test protocol
  When I select "new protocol"
  Then I should see the "New Protocol" form
  When I fill out the form with the following attributes:
    | name          | test   |
    | protocol_tp1  | 0.0125 |
    | protocol_tp2  | 0.05   |
    | protocol_tp3  | 0.5    |
    | protocol_tp4  | 0.75   |
    | protocol_tp5  | 1.0    |
    | protocol_tp6  | 1.5    |
    | protocol_tp7  | 3.0    |
    | protocol_tp8  | 5.0    |
    | protocol_tp9  | 10.0   |
    | protocol_tp10 | 25.0   |
    | protocol_tp11 | 100.0  |
  And I press "Submit"
  Then I should see "New Protocol Added"
  When I press the "test protocol" button
  Then I should see "test"

Scenario: Edit a test protocol
  When I select "edit protocol"
  Then I should see a list of exisiting protocols
  When I select "edit" for "test"
  Then I should see the "test" form filled in
  When I fill in "protocol_tp1" wiht "0.015"
  And I press "Update"
  Then I should see "Test protocol updated"

Scenario: Delete a test protocol
  When I select "delete protocol"
  Then I should see a list of exisiting protocols
  When I select "delete" for "test"
  Then I should see "protocol deleted"
  When I press the "test protocol" button 
  Then I should not see "test"