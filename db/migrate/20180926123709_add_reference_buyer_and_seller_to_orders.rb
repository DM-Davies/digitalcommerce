class AddReferenceBuyerAndSellerToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :buyers, index: true
    add_reference :orders, :sellers, index: true
  end
end
