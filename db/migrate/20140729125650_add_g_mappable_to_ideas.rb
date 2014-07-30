class AddGMappableToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :gmaps, :boolean
  end
end
