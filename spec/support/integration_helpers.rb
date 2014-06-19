module IntegrationHelpers

  def submit_form
    
  end

  def login_with(user)
    visit '/users/sign_in'
    
    ## THESE HAS TO CREATED AS HELPERS TOO
    # fill_in_fields 
    # submit_form
    
    fill_in_fields with user.password and .mail (these should be available from our factory)
    submit_form
    # [OPTIONAL] expect(page).to have_content('logged in successfully') # maybe bad style !!!!!!!!!!!!!!!!!!!
  end

end
