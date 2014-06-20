module IntegrationHelpers

  def submit_form
    
  end

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
        fill_in 'user_email', :with => 'tommaso@devolute.org'
        fill_in 'user_password', :with => 'tommasorails'
      end
      click_button 'Sign in'
      debugger
      3
      visit '/'
      expect(page).to have_content 'Logged in as'
    #end
    
    
  end

end
