require "spec_helper"

# test root redirect tot sign in page
describe 'visiting the root' do
  it 'should redirect to the sign in page' do
    visit '/'
    page.should have_content('You need to sign in or sign up before continuing')
  end
end

feature "Signing in" do
  background do
    User.create(:email => 'admin@example.com', :password => 'adminexample')
  end

  scenario "Signing in with correct credentials" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => 'admin@example.com'
      fill_in 'user_password', :with => 'adminexample'
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
