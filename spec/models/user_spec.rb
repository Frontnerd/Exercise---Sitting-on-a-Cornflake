require 'spec_helper'

describe User do

  let(:user) { create(:user) }

#  describe "relations" do
#    it "should have many ideas" do
#      expect(described_class).to have_many(:ideas)
#     end
#  end

  it 'should have attributes from the factory' do
    expect(user.email).to be_present
    # expect(true).to be_true\
    # expect(page).to have_css('.title')
  end
  
end





## Prefix class methods with a '.'
#describe User, '.active' do
#  it 'returns only active users' do
#    # setup
#    active_user = create(:user, active: true)
#    non_active_user = create(:user, active: false)

#    # exercise
#    result = User.active

#    # verify
#    expect(result).to eq [active_user]

#    # teardown is handled for you by RSpec
#  end
#end

## Prefix instance methods with a '#'
#describe User, '#name' do
#  it 'returns the concatenated first and last name' do
#    # setup
#    user = build(:user, first_name: 'Josh', last_name: 'Steiner')

#    # excercise and verify
#    expect(user.name).to eq 'Josh Steiner'
#  end
#end

