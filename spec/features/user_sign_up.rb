require "spec_helper"

feature "user sign up" do
  before do
    visit root_url
  end

  let(user) { create(:user) }
  subject { page }

  it { should have_link ("Sign Up") }

  scenario "sign up link navigates to user creation page" do
    click_link("Sign Up")
    expect(current_path).to eq new_user_path
  end

  scenario "sign up page has form elements: name, email, password, password confirmation, submit button" do
    visit new_user_path
    expect(page).to have_field("Name")
    expect(page).to have_field("Email")
    expect(page).to have_field("Password")
    expect(page).to have_field("PasswordConfirmation")
  end

  scenario "user can fill in form fields with content" do
    visit new_user_path
    
end