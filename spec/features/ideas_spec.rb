require 'spec_helper'

feature 'Idea' do

  # test user relation
  it{should belong_to(:user)}

  let!(:created_user) { FactoryGirl.create(:user) } # the variable created here will works only in "before" and "it" blocks !!!

  context 'as user' do

    background { login_with created_user }

    scenario 'I should be able to create a new idea' do
      create_idea
    end

    context 'with an existing idea' do
    
      let!(:created_idea) { FactoryGirl.create(:idea, user: created_user )}

      scenario 'I should be able to edit a created idea' do
        visit '/'
        within("tr#idea_#{created_idea.id}") do 
          click_link('Edit')
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
