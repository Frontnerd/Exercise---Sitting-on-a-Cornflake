require 'spec_helper'

module IntegrationHelpers

  def user
    let!(:user) { FactoryGirl.create(:user) }
  end

  #def submit_form
  #end

  def login_with(user)
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', :with => user.email
      fill_in 'user_password', :with => user.password
    end
    click_button 'Sign in'
    visit '/'
    ## TODO EXPECTATIONS WILL BE IN HE FATURE TEST FILE
    expect(page).to have_content 'Logged in'
  end

  def create_idea
    visit '/ideas/new'
    within("#new_idea") do
       fill_in 'idea_name', :with => "Release"
       fill_in 'idea_description', :with => "Release Desc"
       attach_file('idea_attachment', 'spec/fixtures/carbonio.mp3')
    end
    click_button 'Create Idea'
    ## TODO EXPECTATIONS WILL BE IN HE FATURE TEST FILE
    expect(page).to have_content 'Idea was successfully created.'
  end

end
