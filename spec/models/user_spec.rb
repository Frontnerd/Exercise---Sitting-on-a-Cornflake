require 'spec_helper'

describe User do

  let(:user) { create(:user) }

  it 'should have attributes from the factory' do
    expect(user.email).to be_present
    # expect(true).to be_true\
    # expect(page).to have_css('.title')
  end

  describe "relations" do
    it "should have many ideas" do
      expect(User).to have_many(:ideas)
     end
  end

end

