# features/sign_up.feature
Feature: Sign up
  As a fashion industry professional
  So that I can create an account and share my profile
  I want to sign up with my email

  Background: users and countries in the database
    Given the following users exist
      | name           | password  | job   | city   | state | id | highlights |
      | Andrea.Picardo | Test1234! | Model | Austin | Texas | 0  | test       |
    And the following countries exist
      | country       | state | city   |
      | United States | Texas | Austin |

    @javascript
  Scenario: New user successfully creates an account with email confirmation
    Given I am on the signup page
    When I fill in the following:
    | user[email]                 | test@example.com |
    | user[password]              | Test1234!        |
    | user[password_confirmation] | Test1234!        |
    And I click on "Sign up"
    Then I should see an email confirmation message
