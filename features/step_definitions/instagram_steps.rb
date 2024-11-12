Given("I am logged in to my account") do
    # Implement login logic
  end
  
#   Given("I am on the show_profile page") do
#     visit show_profile_path
#   end
  
#   When("I click the {string} link") do |link_text|
#     click_link link_text
#   end
  
  Then("I should be redirected to Instagram's authorization page") do
    expect(page).to have_current_path(/api.instagram.com/)
  end
  
  When("I authorize the application") do
    authorization_result = simulate_authorization()
  expect(authorization_result).to eq("User authorized the application successfully")
  end
  
  Then("I should be redirected back to the show_profile page") do
    expect(page).to have_current_path(show_profile_path)
  end
  
  Then("I should see a success message indicating my Instagram account is connected") do
    expect(page).to have_content("Instagram account successfully connected")
  end
  
  Then("I should see my Instagram posts displayed on the page") do
    expect(page).to have_css('.instagram-post')
  end
  
  Then("I should see the captions for my Instagram posts") do
    expect(page).to have_css('.instagram-caption')
  end
  
  Then("I should see a message indicating the Instagram connection was not successful") do
    expect(page).to have_content("Instagram connection was not successful")
  end
  
  Given("I have connected my Instagram account") do
    @user_has_instagram = true
  end
  
  Then("I should see a confirmation message") do
    expect(page).to have_content("Are you sure you want to disconnect your Instagram account?")
  end
  
  When("I confirm the disconnection") do
    click_button "Confirm"
  end
  
  Then("I should see a success message indicating my Instagram account is disconnected") do
    confirmation_message, _ = check_confirmation_and_posts(true)
    expect(page).to have_content(confirmation_message)
  end
  
  Then("I should no longer see my Instagram posts on the page") do
    _, visibility = check_confirmation_and_posts(true)
    expect(page).not_to have_css('.instagram-post')
    expect(visibility).to eq("Instagram posts should not be visible")
  end