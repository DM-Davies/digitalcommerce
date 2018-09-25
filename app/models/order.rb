class Order < ApplicationRecord
  serialize :video, JSON # If you use SQLite, add this line.

  mount_uploader :video, VideoUploader

  belongs_to :listing
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"

  has_one :sales_upload

  #validates :address, :city, :state, presence: true
end
