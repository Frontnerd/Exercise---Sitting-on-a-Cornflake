class AddGeolocationToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :latitude, :float
    add_column :ideas, :longitude, :float
    add_column :ideas, :address, :string
  end
end
