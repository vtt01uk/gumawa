class Order < ActiveRecord::Base
  validates :address, :city, :state, presence: true
  
  #association
  belongs_to :listing
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
end
