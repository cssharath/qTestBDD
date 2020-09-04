Feature: Scenario App Colors
  Sample description for BDD Scenario App

  @SmokeTest
  Scenario: Color Red
    Given I select color red
    When No other color is selected
    Then I am left with Red

  @RegressionTest
  Scenario: Color Blue
    Given I select color Blue
    When I already have color Red
    Then I am left with Purple
    
