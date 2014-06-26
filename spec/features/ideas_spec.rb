require 'spec_helper'

feature 'Idea' do

  let!(:created_user) { FactoryGirl.create(:user) } # the variable created here wil works only in "before" and "it" blocks !!!

  context 'as user' do

    background { login_with created_user }

    scenario 'I should be able to create a new idea' do
      create_idea
    end

    context 'with an existing idea' do
    
      let!(:created_idea) { FactoryGirl.create(:idea)}

      scenario 'I should be able to edit a created idea' do
        visit '/'
        within("#ideas") do 
          find(:xpath, "//a[@href='/ideas/1/edit']").click
        end

        expect(page).to have_content 'Editing idea'
      end

      scenario 'I should be able to delete a created idea' do
        visit '/'
        within("#ideas") do 
          find(:xpath, ".//a[@data-method='delete'][1]").click
        end
        expect(page).to have_content 'Listing ideas'
      end
    
    end

  end

end
