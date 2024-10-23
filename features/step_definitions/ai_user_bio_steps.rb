# ai_user_bio_steps.rb
Given('I am logged in as a user', :ai_user_bio) do
  @user = User.find_by(email: 'user@example.com') || create(:user, email: 'user@example.com')
  login_as(@user, scope: :user)
end


Given('my profile has the following incomplete but relevant information:') do |table|
  # Update user's GeneralInfo with incomplete relevant information
  table.hashes.each do |field|
    @user.general_info.update(field['field'] => field['value'])
  end
end

When('I navigate to the "Edit Professional Info" page') do
  visit edit_user_profile_path(@user)
end

When('I click on the "Generate About Me" button') do
  click_button 'Generate About Me'
end

Then('I should see a prompt telling me the following relevant details are missing:') do |table|
  table.raw.flatten.each do |missing_field|
    expect(page).to have_content("Please provide your #{missing_field} for a more personalized bio.")
  end
end

Then('I should see a generated "About Me" based on the relevant existing information') do
  # Example output based on the generated bio from relevant info
  expect(page).to have_content('Based on your company "VisualTech" and 5 years of experience...')
end

Then('I can edit the generated text') do
  expect(page).to have_selector('textarea', visible: true)
end
