require 'spec_helper'

describe Idea do

  describe "the Idea should be related to a user" do
    
    # test user relation
    it{should belong_to(:user)}
    
  end 
  
end 
