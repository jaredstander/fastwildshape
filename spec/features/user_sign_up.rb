require "spec_helper"

feature "user sign up" do
  before do
    visit root_url
  end

  expect(page).to have_link "Sign up"

  scenario "sign up link navigates to user creation page" do
    click_link("Sign Up")
    expect(current_path).to eq new_user_path
  end

  # Since you only use   user  in :26, how about setting it in there instead? Or better yet, don't use the factory at all, since that scenario is about creating a use.
  scenario "user can fill in form fields, submit, and be logged in when values are correct" do
    visit new_user_path
    expect(page).to have_field("Name")
    expect(page).to have_field("Email")
    expect(page).to have_field("Password")
    expect(page).to have_field("PasswordConfirmation")
    fill_in "Name", with: "Stinkmeyer"
    fill_in "Email", with: "Stingmeyer@lordran.net"
    fill_in "Password", with: "SeriouslyAGoodPassword!"
    fill_in "PasswordConfirmation", with: "SeriouslyAGoodPassword!"
    click_button "Sign Up"
    expect(response.body) have_content "Hello #{user.name}!"
  end

  scenario "user remains on create account page when an error occurs" do
    # :33, :39 - use expect(response.body), for consistency.
    visit new_user_path
    click_button "Sign Up"
    response.body.should have_content "cannot be blank"
  end
  
end