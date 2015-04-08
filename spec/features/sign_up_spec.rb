require "spec_helper"

feature "Signing up" do

  # this was warking when the non signed in redirec was active..
  #context 'as a non-registered user' do
  #  scenario 'I should see fields to enter my data' do
  #    visit '/'
  #    page.should have_css('#user_email')
  #  end
  #end
  
  context 'Signing up without password confirmation' do
    scenario 'it should throw an error' do
      visit '/users/sign_up'
      within("#new_user") do
        fill_in 'user_email', :with => 'admin@example.com'
        fill_in 'user_password', :with => 'adminexample'
        fill_in 'user_password_confirmation', :with => 'adminexample'
      end
      click_button 'Create User'
      expect(page).to have_css('#error_explanation')
    end
  end
  
end

