require 'rails_helper'

feature 'Visitor visits site' do 
  scenario 'not logged in' do
    # Setup
    page.set_rack_session(user_id: nil)

    # Exercise
    visit root_path

    # Verify
    expect(page).to have_content("About")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Log In")
    expect(page).to have_content("Sign Up")

  end
end