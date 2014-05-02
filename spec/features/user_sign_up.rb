require "spec_helper"

feature "user sign up" do
  before do
    visit root_url
  end

  # The syntax on :8 is wrong.
  let(user) { create(:user) }
  # :9 - This is only used for :11, so how about changing :11 into   expect(page).to have_link "Sign up"
  subject { page }

  it { should have_link ("Sign Up") }

  scenario "sign up link navigates to user creation page" do
    click_link("Sign Up")
    expect(current_path).to eq new_user_path
  end

  # :18 doesn't seem particularly useful; how about describing the behavior instead. Something like :26.
  scenario "sign up page has form elements: name, email, password, password confirmation, submit button" do
    visit new_user_path
    expect(page).to have_field("Name")
    expect(page).to have_field("Email")
    expect(page).to have_field("Password")
    expect(page).to have_field("PasswordConfirmation")
  end

  # Since you only use   user  in :26, how about setting it in there instead? Or better yet, don't use the factory at all, since that scenario is about creating a use.
  scenario "user can fill in form fields, submit, and be logged in when values are correct" do
    visit new_user_path
    fill_in "Name", with: user.name
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "PasswordConfirmation", with: user.password_confirmation
    # :33, :39 - use expect(response.body), for consistency.
    click_button "Sign Up"
    response.body.should have_content "Hello #{user.name}!"
  end

  scenario "user remains on create account page when an error occurs" do
    # :33, :39 - use expect(response.body), for consistency.
    visit new_user_path
    click_button "Sign Up"
    response.body.should have_content "cannot be blank"
  end
  
end