class SalesUpload < ApplicationRecord
  serialize :video, JSON # If you use SQLite, add this line.

  mount_uploader :video, VideoUploader

  belongs_to :order
  belongs_to :user

  has_one :buyer
end
