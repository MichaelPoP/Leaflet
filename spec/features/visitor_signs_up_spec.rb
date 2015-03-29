require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'goes to sign up page' do
    # Setup
    page.set_rack_session(user_id: nil)
    visit root_path

    # Exercise
    click_button "Sign Up with Email"

    # Verify
    expect(page).to have_content("First name")
    expect(page).to have_content("Last name")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Confirm Password")
  end

end