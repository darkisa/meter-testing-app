Feature: Adding, deleting, and updating protocols
  As an operator
  I want to be able to add, delete, and update protocols
  so that I can have the latest and greatest testing protocols

Background: 
  Given I am an authenticated user
  When I follow "Test"
  And I press "Protocol"

# Adding new protocols
Scenario: An operator wants to add a new test protocol
  When I follow "New Protocol"
  And I fill out the form with the following:
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

Scenario: When an operator tries to submit an exisiting test protocol, and fails
  When I follow "New Protocol"
  And I fill out the form with the following:
    | name | test |
  And I press "Submit"
  And I follow "Test"
  And I press "Protocol"
  And I follow "New Protocol"
  And I fill out the form with the following:
    | name | test |
  And I press "Submit"
  Then I should see "Protocol already exists"

# Editing and updating an exisiting protocol
Scenario: An operator selects an exisitng protocol to edit
  Given A protocol called "Protocol 1" exists
  When I follow "Edit Protocol"
  And I select "Edit" for "Protocol 1"
  Then I should see the "Edit Protocol" form filled in with "Protocol 1"

Scenario: An operator modifies an existing protocol
  Given A protocol called "Protocol 1" exists
  When I follow "Edit Protocol"
  And I select "Edit" for "Protocol 1"
  And I fill in "protocol_name" with "Protocol 2"
  And I press "Update"
  Then I should see "Protocol has been updated"

# Deleting an exisiting protocol
Scenario: An operator wants to delete an existing protocol
  Given A protocol called "Protocol 1" exists
  When I follow "Delete Protocol"
  And I select "Delete" for "Protocol 1"
  Then I should see "Protocol has been deleted"


