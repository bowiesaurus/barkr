require 'rails_helper'

feature "User signs up through signup page"  do
  it "creates a new user" do
    visit "/owners/sign_up"

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"


      click_on "Sign up"


    expect(page).to have_content "Random Pet"
    expect(page).to have_content "Welcome! You have signed up successfully."
  end


  it "does not create a new user if invalid input" do
    visit "/owners/sign_up"

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: " "

    click_on "Sign up"

    expect(page).to have_content "Password can't be blank"
  end

  it "does not create a new user if password confirmation does not match" do
    visit "/owners/sign_up"

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "passwor"

    click_on "Sign up"

    expect(page).to have_content "Password confirmation doesn't match Password"
  end
end
