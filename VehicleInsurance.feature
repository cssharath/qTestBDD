Feature: Login

# The first example has two steps
Scenario: Successfull Login
When User Logs in with Valid Credentials
Then Welcome Page should be displayed
