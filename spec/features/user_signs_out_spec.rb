require 'rails_helper'

feature "user signs out", %Q{
  As an owner
  I want to sign out
  So that other people can't access my account
} do

  it "user signs out" do
    owner = FactoryGirl.create(:owner)
    sign_in_as(owner)

    click_on "Sign out"

    expect(page).to have_content "Signed out successfully."
  end
end

