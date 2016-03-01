class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200", thumb: "50x50>" }, default_url: "/image_na.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  validates :name, :description, :price, presence: true
  
  #check to see if price is actually a number and positive
  validates :price, numericality: { greater_than: 0 }
  
  #validates images 
  validates_attachment_presence :image
end
