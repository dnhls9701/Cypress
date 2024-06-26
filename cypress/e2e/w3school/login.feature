Feature: User Login W3schools

  As a user of the W3schools web application,
  I want to be able to log in with my credentials,
  So that I can access my account.

  @happycase
  Scenario: Login in W3schools successfully
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen01@gmail.com" and password "Lan@12345"
    And I click on Login button to login
    Then I can see W3schools Dashboard

  @unhappycase
  Scenario: Login in W3schools failed
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen01@gmail.com" and invalid password "Lan12345"
    And I click on Login button to login
    Then I can see the error notification
