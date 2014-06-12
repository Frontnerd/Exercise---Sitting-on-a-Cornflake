require "spec_helper"


feature "Signing in" do
  background do
    User.create(:email => 'tommaso@devolute.org', :password => 'tommasorails')
  end

  scenario "Signing in with correct credentials" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => 'tommaso@devolute.org'
      fill_in 'user_password', :with => 'tommasorails'
    end
    click_button 'Sign in'
    visit '/'
    expect(page).to have_content 'Logged in as'
  end

  given(:other_user) { User.create(:email => 'other@example.com', :password => 'rous') }

  scenario "Signing in as another user" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => other_user.email
      fill_in 'user_password', :with => other_user.password
    end
    click_button 'Sign in'
    visit '/'
    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end
end
