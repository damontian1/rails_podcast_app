class Episode < ActiveRecord::Base
  belongs_to :podcast
  has_attached_file :thumbnail, :styles => { :large => "1000x1000#", :thumb => "500x500#" }
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
