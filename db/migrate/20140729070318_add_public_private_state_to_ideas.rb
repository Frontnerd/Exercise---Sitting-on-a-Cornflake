class AddPublicPrivateStateToIdeas < ActiveRecord::Migration
  def change
    #
    add_column :ideas, :is_public, :string
  end
end
