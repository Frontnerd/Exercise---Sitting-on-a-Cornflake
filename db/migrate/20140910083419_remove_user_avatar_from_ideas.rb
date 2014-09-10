class RemoveUserAvatarFromIdeas < ActiveRecord::Migration
  def self.up
    remove_column :ideas, :user_avatar, :string
  end

  def self.down
    remove_column :ideas, :user_avatar, :string
  end
end
