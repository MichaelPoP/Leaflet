require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'goes to sign up page' do
    # Setup
    page.set_rack_session(user_id: nil)
    visit root_path

    # Exercise
    click_button "Sign Up with Email"

    # Verify
    expect(page).to have_content("First name:")
    expect(page).to have_content("Last name:")
    expect(page).to have_content("Email:")
    expect(page).to have_content("Password:")
    expect(page).to have_content("Confirm password:")
  end

  scenario 'successfully creates user' do
    # Setup
    visit new_user_path

    # Exercise
    fill_in "First name", with: "Jack"
    fill_in "Last name", with: "Johnson"
    fill_in "Email", with: "koshercucumbers@daErf.com"
    fill_in "Password", with: "1234"
    fill_in "Confirm password", with: "1234"
    click_button "Submit"

    # Verify
    expect(page).to have_content("Thanks for signing up!")
    expect(page).to have_content("Jack Johnson")
    expect(page).to have_content("Friends")
    expect(page).to have_content("Jack Johnson")
    expect(page).to have_content("Groups")
    expect(page).to have_content("Log out")
    expect(page).to have_content("Your stats")
    expect(page).to have_content("Water")
    expect(page).to have_content("Gas")
    expect(page).to have_content("Electric")
  end

  scenario 'with mismatching passwords' do
    # Setup
    visit new_user_path

    # Exercise
    fill_in "First name", with: "Jack"
    fill_in "Last name", with: "Johnson"
    fill_in "Email", with: "koshercucumbers@daErf.com"
    fill_in "Password", with: "1234"
    fill_in "Confirm password", with: "123"
    click_button "Submit"

    # Verify
    expect(page).to have_content("Please make sure your password confirmation matches")
  end
end