require 'spec_helper'

module IntegrationHelpers

  def user
    let!(:user) { FactoryGirl.create(:user) }
  end

  #def submit_form
  #end

  def login_with(user)
    ## THESE HAS TO CREATED AS HELPERS TOO
    # fill_in_fields 
    # submit_form
    
    #fill_in_fields with user.password and .mail (these should be available from our factory)
    #submit_form
    # [OPTIONAL] expect(page).to have_content('logged in successfully') # maybe bad style !!!!!!!!!!!!!!!!!!!
    
    #describe "Signing in with correct credentials" do
      visit '/users/sign_in'
      within("#new_user") do
        fill_in 'user_email', :with => user.email
        fill_in 'user_password', :with => user.password
      end
      click_button 'Sign in'
      visit '/'
      expect(page).to have_content 'Logged in'
    #end
    
    
  end

end
