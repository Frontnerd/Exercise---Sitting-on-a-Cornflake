class AddUserAvatarToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :user_avatar, :string
  end

  def self.down
    add_column :ideas, :user_avatar, :string
  end
end
