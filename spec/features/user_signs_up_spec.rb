require 'rails_helper'

feature "User signs up", %Q{
  As an owser
  I want to be register a new account
  So that I can post and interact with other dog owners
}  do

  it "users sign up with valid information" do
    visit new_owner_registration_path

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Create Account"

    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "Create Pet Profile!"
  end

  it "user signs up with invalid input" do
    visit new_owner_registration_path

    click_on "Create Account"

    expect(page).to have_content "Email can't be blank"
    expect(page).to have_content "Password can't be blank"
  end

  it "user cannot register unless password confirmation matches" do
    visit new_owner_registration_path

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "passwor"

    click_on "Create Account"

    expect(page).to have_content "Password confirmation doesn't match Password"
  end
end
