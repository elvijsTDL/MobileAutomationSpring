Feature: Authorization test cases

  Background: Preconditions for all test cases

  Scenario Outline: Logging in with an existing user
    Given User has opened the login page
    And User inputs <email> into the email field
    And User inputs <password> into the password field
    And User clicks on the login button
    Then User opens my profile page
    And The logged in users name is <name>
    And The logged in users email is <email>
    Examples:
      | email               | password          | name       |
      | tdltdl@gmail.com    | SecretPassword123 | YoloBolo   |
      | springtdl@gmail.com | Password123       | RubyErrors |
      | .sdfgasdfasdfcom    | Password123       | RubyErrors |


    Scenario: Registering a new user
      Given User has opened the login page
      And User goes to sign up page
      And User inputs new user credentials
      And User clicks sign up
      And User skips the coupon code screen
      And User skips the phone verification
      Then User sees the my profile button

