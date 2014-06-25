require 'spec_helper'

feature 'Idea' do

  let!(:created_user) { FactoryGirl.create(:user) } # the variable created here wil works only in "before" and "it" blocks !!!

  context 'as user' do

    background { login_with created_user }

    scenario 'I should be able to create a new idea' do
      create_idea
    end

    scenario 'I should be able to edit a created idea' do
      create_idea
      visit '/'
      within("#ideas") do 
        # print page.html
        find(:xpath, "//a[@href='/ideas/1/edit']").click
        # THIS SHOULD WORK AS WELL USING CUSTOM SELECTOS 
        # find(:link_with_href_value, '/ideas/1/edit').click
      end

      expect(page).to have_content 'Editing idea'
    end

  end

end
