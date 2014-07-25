class Idea < ActiveRecord::Base
  # paperclip
  has_attached_file :attachment, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attachment, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ],
                                    :message => 'file must be of filetype .mp3'
  validates_attachment_size :attachment, :less_than => 10.megabytes
  
  # user association
  belongs_to :user
end
