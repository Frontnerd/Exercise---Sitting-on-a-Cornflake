require 'spec_helper'

feature 'idea' do

  let!(:me) { FactoryGirl.create(:user) }
 
  context 'being logged in' do
    login_with me
  
    context 'when I visit the ideas new view' do
      visit '/ideas/new'
      
       scenario 'I should be able to make a new idea' do
  
         within("#new_idea") do
            fill_in 'idea_name', :with => 'fake idea name'
            fill_in 'idea_description', :with => 'some description'
         end

         click_button 'Create Idea'
         expect(page).to have_content 'Idea was successfully created.'
     end
  end
  
end
