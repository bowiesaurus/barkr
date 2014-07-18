require 'rails_helper'

feature "user signs in", %Q{
  As an owner
  I want to sign in
  So that I can interact with other my new friends
  } do

  it "user signs in a valid info" do
    user = FactoryGirl.create(:user)

    visit new_owner_registration_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Sign in"

    expect(page).to have_content "Signed in successfully."
  end

  it "user signs in with invalid info" do
    visit new_owner_registration_path
    click_on "Sign in"

    expect(page).to have_content "Invalid email or password."
  end
  end
end
