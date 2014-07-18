module AuthenticationHelpers
    def sign_in_as(owner)
      visit new_owner_session_path

      fill_in "Email", with: owner.email
      fill_in "Password", with: owner.password
      click_on "Sign in"
    end
end
