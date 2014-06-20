require 'spec_helper'

describe Idea do

  let!(:created_user) { FactoryGirl.create(:user) } # the variable created here wil works only in "before" and "it" blocks !!!
 
  it 'being logged in' do

    login_with created_user
  
    describe 'when I visit the ideas new view' do
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
  
end
