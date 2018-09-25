class SalesUpload < ApplicationRecord
  serialize :video, JSON # If you use SQLite, add this line.

  mount_uploader :video, VideoUploader

  belongs_to :user
  has_one :order
  has_one :buyer

  def order_sales_relationship
    Order.where(id: SalesUpload.pluck(:order_id))
  end

  def ordertits
    Order.where(:id) && SalesUpload.where(:order_id)
  end
end
