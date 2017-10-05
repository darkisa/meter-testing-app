Feature: Adding a new protocol
  As an operator
  I want to be able to add testing protocols
  so that I create new protocols if new tests are required

Background: 
  Given I am an authenticated user
  When I follow "Test"
  And I press "Test Name"
  And I follow "New Protocol"

Scenario: Add a new test protocol
  When I fill out the form with the following:
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
  Then I should see "New protocol added"

Scenario: Prevent same protocol entry
  When I fill out the form with the following:
    | name | test |
  And I press "Submit"
  And I follow "Test"
  And I press "Test Name"
  And I follow "New Protocol"
  And I fill out the form with the following:
    | name | test |
  And I press "Submit"
  Then I should see "Protocol already exists"
