class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200", thumb: "50x50>" }, default_url: "/image_na.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
