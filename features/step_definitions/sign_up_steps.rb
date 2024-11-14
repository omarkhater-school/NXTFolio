Then(/^I should see an email confirmation message$/) do
    expect(page).to have_content("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.")
  end
  