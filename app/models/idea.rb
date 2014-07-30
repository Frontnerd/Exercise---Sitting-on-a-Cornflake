class Idea < ActiveRecord::Base
  # paperclip
  has_attached_file :attachment, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attachment, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ],
                                    :message => 'file must be of filetype .mp3'
  validates_attachment_size :attachment, :less_than => 10.megabytes

  # user association
  belongs_to :user

  # geocoder
  # with an attributes
  #geocoded_by :address # address is an attribute of Ideas
  # or with a method
  geocoded_by :full_address # full_address is a method which take some model's attributes to get a formatted address for example
  # the callback to set longitude and latitude
  after_validation :geocode
  #the full_address method
  def full_address
    "#{address}"
  end

  # gmaps4rails
  # acts_as_gmappable :process_geocoding => false
  
end
