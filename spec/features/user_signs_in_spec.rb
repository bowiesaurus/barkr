require 'rails_helper'

feature "User signs in through Sign in page"  do
  it "signs in a valid user" do
    visit "/owners/sign_in"

    fill_in "Email", with: "sbmail@yahoo.com"
    fill_in "Password", with: "password"

    click_on "Sign in"

    expect(page).to have_content "Signed in successfully."
    expect(page).to have_content "Random Pet"
  end
end
