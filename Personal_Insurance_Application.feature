Feature: Personal Insurance Application
  Personal Insurance premium discount calculation considering Age, Gender & Location

  @SmokeTest
  Scenario: Male who is 24 to 60 years old living in city, applies for insurance
    Given Applicant is Male AND their age is 24..60 years AND they live in a City
    When they apply for a personal insurance
    Then they do not get a discount
  @RegressionTest    
  Scenario: Male who is less than 18 years old living in city, applies for insurance
    Given Applicant is Male AND their age is < 18 years AND they live in a City
    When they apply for a personal insurance
    Then they are not eligible for an insurance
  @RegressionTest
  Scenario: Male who is 18 to 23 years old living in city, applies for insurance
    Given Applicant is Male AND their age is 18 to 23 years AND they live in a City
    When they apply for a personal insurance
    Then they are required to pay an additional surcharge of 10% on the premium