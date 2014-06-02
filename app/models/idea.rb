class Idea < ActiveRecord::Base
  has_attached_file :attachment, :default_url => "/images/:style/missing.png"
  do_not_validate_attachment_file_type :attachment
end
