class RemoveOrderIdFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :order_id, :integer
  end
end