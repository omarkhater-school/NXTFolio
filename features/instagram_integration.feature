Feature: Instagram Integration

  Scenario: User connects Instagram account and views posts on profile
    Given I am logged in to my account
    And I am on the show_profile page
    When I click the "Connect to Instagram" link
    Then I should be redirected to Instagram's authorization page
    When I authorize the application
    Then I should be redirected back to the show_profile page
    And I should see a success message indicating my Instagram account is connected
    And I should see my Instagram posts displayed on the page
    And I should see the captions for my Instagram posts

  Scenario: User attempts to connect Instagram without authorizing
    Given I am logged in to my account
    And I am on the show_profile page
    When I click the "Connect to Instagram" link
    Then I should be redirected to Instagram's authorization page
    When I cancel the authorization
    Then I should be redirected back to the show_profile page
    And I should see a message indicating the Instagram connection was not successful

  Scenario: User disconnects Instagram account
    Given I am logged in to my account
    And I have connected my Instagram account
    And I am on the show_profile page
    When I click the "Disconnect Instagram" link
    Then I should see a confirmation message
    When I confirm the disconnection
    Then I should see a success message indicating my Instagram account is disconnected
    And I should no longer see my Instagram posts on the page