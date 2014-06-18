require 'spec_helper'

feature 'idea' do
  background do
    let!(:user) { FactoryGirl.create :confirmed_user }
  end

  scenario 'I should be able to make a new idea' do
    visit '/ideas/new'
    within("#new_idea") do
      fill_in 'idea_name', :with => 'fake idea name'
      fill_in 'idea_description', :with => 'some description'
    end
    click_button 'Create Idea'
    expect(page).to have_content 'Idea was successfully created.'
  end
end

