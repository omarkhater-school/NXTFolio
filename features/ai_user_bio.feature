Feature: Generate personalized "About Me" section using pre-existing user info
  As a user
  I want the system to generate an "About Me" section using only specific relevant professional info
  So that I can quickly personalize my profile with the ability to make edits

  Scenario: Generate "About Me" with missing relevant details
    Given I am logged in as a regular user
    And my profile has the following incomplete but relevant information:
      | field          | value            |
      | city           | "College Station"|
      | company        | "VisualTech"     |
      | compensation   |                  |
      | country        | "USA"            |
      | experience     |                  |
      | gender         | "Male"           |
      | industry       | "Photography"    |
      | specialization | "Portraits"      |
    When I navigate to the "Edit Professional Info" page
    And I click on the "Generate About Me" button
    Then I should see a prompt telling me the following **relevant** details are missing:
      | Missing Field  |
      | experience     |
      | compensation   |
    And I should see a generated "About Me" based on the relevant existing information
    And I can edit the generated text

  Scenario: Generate "About Me" with no missing relevant details
    Given I am logged in as a regular user
    And my profile has the following complete relevant information:
      | field          | value            |
      | city           | "New York"       |
      | company        | "VisualTech"     |
      | compensation   | "Hourly"         |
      | country        | "USA"            |
      | experience     | "5 years"        |
      | gender         | "Female"         |
      | industry       | "Photography"    |
      | specialization | "Portraits"      |
    When I navigate to the "Edit Professional Info" page
    And I click on the "Generate About Me" button
    Then the system should generate a complete "About Me" based on all relevant existing information
    And I can edit the generated text