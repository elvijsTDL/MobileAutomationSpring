Feature: Authorization test cases

  Background: Preconditions for all test cases

    Scenario: Logging in with an existing user
      Given User has opened the login page
      And User has input their email and password
      And User clicks on the login button
      Then User sees the my profile button