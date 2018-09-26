class SalesUpload < ApplicationRecord
  serialize :video, JSON # If you use SQLite, add this line.

  mount_uploader :video, VideoUploader

  belongs_to :order
  has_one :buyer, through: :order
  has_one :seller, through: :order
end
