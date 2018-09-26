class Order < ApplicationRecord

  mount_uploader :video, VideoUploader
  serialize :video, JSON # If you use SQLite, add this line.

  #validates :address, :city, :state, presence: true

  belongs_to :listing, optional: true
  belongs_to :buyer
  belongs_to :seller

  has_one :sales_upload
end
