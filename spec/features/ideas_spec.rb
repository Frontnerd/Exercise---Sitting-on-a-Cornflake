require 'spec_helper'

feature 'Idea' do

  let!(:created_user) { FactoryGirl.create(:user) } # the variable created here wil works only in "before" and "it" blocks !!!

  context 'as user' do

    background { login_with created_user }

    scenario 'I should be able to create a new idea' do
      visit '/ideas/new'
      within("#new_idea") do
         fill_in 'idea_name', :with => 'fake idea name'
         fill_in 'idea_description', :with => 'some description'
      end
      click_button 'Create Idea'
      expect(page).to have_content 'Idea was successfully created.'
    end

    scenario 'I should be able to edit a created idea' do
      visit '/'

      within("#ideas") do 
        find(:xpath, "//a", :text => 'Edit ').click
      end

      expect(page).to have_content 'Editing idea'
    end

  end

end
