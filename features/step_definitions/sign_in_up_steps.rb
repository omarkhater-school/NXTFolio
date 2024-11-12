
# Create Profile Step Definitions

# Given(/^I am on the landing page$/) do
#   visit root_path
# end

When(/^I fill in "([^"]*)" text field with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

# Then(/^I should be directed to the "([^"]*)" page$/) do |page_name|
#   visit path_to(page_name)
#   current_path = URI.parse(current_url).path
#   expect(current_path).to eq(path_to(page_name))
# end

Then(/^"([^"]*)" should be added to the GeneralInfo database$/) do |firstname|
  expect(GeneralInfo.exists?(:first_name => firstname)).to be(true)
  GeneralInfo.find_by(first_name: firstname).destroy
end

Then(/^"([^"]*)" should not be added to the GeneralInfo database$/) do |firstname|
  expect(GeneralInfo.exists?(:first_name => firstname)).to be(false)
end

Then(/^I will be on (.+)$/) do |page_name|
  expected_path = path_to(page_name)
  expect(page).to have_current_path(expected_path, wait: 5)
end

# New step definitions for email authentication and password requirements

Given("I have received an authentication email for {string}") do |email|
  @authentication_email = email
  # Implement logic to simulate receiving an authentication email
  EmailService.send_authentication_email(email)
end

When("I click the authentication link in the email") do
  # Simulate clicking the authentication link
  visit authenticate_email_path(@authentication_email)
end

Then("an authentication email should be sent to {string}") do |email|
  # Check if an authentication email was sent
  expect(EmailService).to have_sent_email(to: email, subject: "Authenticate Your Account")
end

Given("I have signed up but not authenticated my email") do
  @user = User.create(email: "unauthenticated@example.com", password: "ValidPass123!", email_authenticated: false)
end

When("I try to log in with my credentials") do
  step "I fill in the following:", table(%{
    | login_email    | unauthenticated@example.com |
    | login_password | ValidPass123!               |
  })
  step 'I click on "SIGN IN"'
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end

Then("I should not see any password-related error messages") do
  expect(page).not_to have_content("Password must be at least 8 characters long")
  expect(page).not_to have_content("Passwords do not match")
  expect(page).not_to have_content("Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character")
end

Given("I am on the login page") do
  visit login_path
end

When("I fill in the following:") do |table|
  table.rows_hash.each do |field, value|
    fill_in field, with: value
  end
end

When("I click on {string}") do |button_text|
  click_button button_text
end

Then("I should be on the new_general_info page") do
  expect(current_path).to eq(new_general_info_path)
end

Then("I should be on the home page") do
  expect(current_path).to eq(root_path)
end