Feature: User Login W3schools

  As a user of the W3schools web application,
  I want to be able to log in with my credentials,
  So that I can access my account.

  @happycase
  Scenario: Login in TestGrid
    Given I open W3schools Page
    When I submit Login with valid email "lesleydoannguyen01@gmail.com" and password "Lan@12345"
    Then I can see W3schools Dashboard
