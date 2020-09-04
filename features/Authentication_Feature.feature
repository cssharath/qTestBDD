Feature: Authentication Feature
  Authenticate into the application

  @SmokeTest
  Scenario: Successful authentication when correct credentials are given
    Given I have opened the application
    When I enter valid credentials
    And click Login
    Then I should see my personalized home page

  @RegressionTest
  Scenario: Unsuccessful authentication when incorrect credentials are given
    Given I have opened the application
    When I enter invalid credentials
    And click Login
    Then Error message should be thrown