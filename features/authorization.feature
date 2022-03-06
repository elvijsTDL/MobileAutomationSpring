Feature: Authorization test cases

  Background:
    Given User has opened the login page

  @WIP
  Scenario Outline: Logging in with an existing user
    And User inputs <email> into the email field
    And User inputs <password> into the password field
    And User clicks on the login button
    Then User opens my profile page
    And The logged in users name is <name>
    And The logged in users email is <email>
    Examples:
      | email               | password          | name       |
      | tdltdsadfsadfasdfasdfl@gmail.com    | SecretPassword123 | YoloBolo   |
      | springtdl@gmail.com | Password123       | RubyErrors |
      | .sdfgasdfasdfcom    | Password123       | RubyErrors |

    @Login @NewUser @Smoke
    Scenario: Registering a new user
      And User goes to sign up page
      And User inputs new user credentials
      And User clicks sign up
      And User skips the coupon code screen
      And User skips the phone verification
      And User opens my profile page
      Then The random email used for registration is shown

