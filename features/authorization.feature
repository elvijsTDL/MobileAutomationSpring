Feature: Authorization test cases

  Background: Preconditions for all test cases

    Scenario: Logging in with an existing user
      Given User has opened the login page
      And User has input their email and password
      And User clicks on the login button
      Then User opens my profile page
      And The logged in users name is YoloBolo
      And The logged in users email is tdltdl@gmail.com