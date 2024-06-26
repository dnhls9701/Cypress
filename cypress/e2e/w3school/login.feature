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
  Scenario: Login in W3schools failed with invalid email and valid password
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen@gmail.com" and password "Lan@12345"
    And I click on Login button to login
    Then I can see the error notification
    """
    Make sure you type your email and password correctly. Both your password and email are case-sensitive.
    """
  
  Scenario: Login in W3schools failed with invalid email and valid password
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyengmail.com" and password "Lan@12345"
    And I click on Login button to login
    Then I can see the error notification
    """
    Please enter a valid email address.
    """

  Scenario: Login in W3schools failed with blank email and password
    Given I open W3schools Page
    When I enter valid email " " and password " "
    And I click on Login button to login
    Then I can see the error notification
    """
    Please enter your email and password.
    """

  Scenario: Login in W3schools failed with valid email and invalid password
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen01@gmail.com" and password "Lan12345"
    And I click on Login button to login
    Then I can see the error notification 
    """
    Make sure you type your email and password correctly. Both your password and email are case-sensitive.
    """

  Scenario: Login in W3schools failed with valid email and blank password
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen01@gmail.com" and password " "
    And I click on Login button to login
    Then I can see the error notification 
    """
    Please enter your email and password.
    """
  
  Scenario: Login in W3schools failed with valid email and enter password with 1 character
    Given I open W3schools Page
    When I enter valid email "lesleydoannguyen01@gmail.com" and password "L"
    And I click on Login button to login
    Then I can see the error notification 
    """
    Sorry, looks like that’s the wrong email or password.
    """

  Scenario: Login in W3schools failed with blank email and valid password
    Given I open W3schools Page
    When I enter valid email " " and password "Lan@12345"
    And I click on Login button to login
    Then I can see the error notification 
    """
    Please enter your email and password.
    """
