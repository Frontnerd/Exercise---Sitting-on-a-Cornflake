require "spec_helper"

# test root redirect tot sign in page
#describe 'visiting the root' do
#  it 'should redirect to the sign in page' do
#    visit '/'
#    page.should have_content('You need to sign in or sign up before continuing')
#  end
#end

feature "Signing in" do

  let!(:user) { create :user }

  scenario "Signing in with correct credentials" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => user.email
      fill_in 'user_password', :with => user.password
    end
    click_button 'Sign in'
    expect(page).to have_content 'Signed in successfully.'
  end


  scenario "Signing in as a non registerd user" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => "fakeuser@example.com"
      fill_in 'user_password', :with => 'superfakeuser'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Invalid email or password.'
  end
end
