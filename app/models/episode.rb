class Episode < ActiveRecord::Base
  belongs_to :podcast

  has_attached_file :thumbnail, :styles => { :large => "1000x1000#", :thumb => "500x500#" }
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/

  has_attached_file :mp3
  validates_attachment_content_type :mp3, :content_type => [ 'application/octet-stream', 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]

  Paperclip.options[:content_type_mappings] = {
  :mp3 => "application/octet-stream"
	}

end
