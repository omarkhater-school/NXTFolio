# spec/features/ai_user_bio_spec.rb
require 'rails_helper'

RSpec.feature 'AI About Me Generator', type: :feature do
  let(:user) { create(:user) }
  let(:general_info) { create(:general_info, user: user, city: "College Station", company: "VisualTech", country: "USA", gender: "Male", industry: "Photography", specialization: "Portraits") }

  before do
    login_as(user, scope: :user) # Warden login_as method
  end

  scenario 'Generate About Me with incomplete user info' do
    visit general_info_edit2_path(user)
    # Wait for the page to load completely if necessary
    expect(page).to have_button('Generate About Me', disabled: false)
    click_button 'Generate About Me'

    # Check for missing fields prompt
    expect(page).to have_content('The following details are missing:')
    expect(page).to have_content('compensation')
    expect(page).to have_content('experience')

    # Check if generated About Me content is visible
    expect(page).to have_content('About Me')
    expect(page).to have_content('Company: VisualTech')
    expect(page).to have_content('Industry: Photography')
    expect(page).to have_content('Specialization: Portraits')

    # Ensure the About Me section is editable
    expect(page).to have_selector('textarea#about_me')
  end
end
