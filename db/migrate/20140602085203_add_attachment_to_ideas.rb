class AddAttachmentToIdeas < ActiveRecord::Migration
  
  def change
    #
    remove_column :ideas, :picture
    #
    add_attachment :ideas, :attachment
  end
  
end
