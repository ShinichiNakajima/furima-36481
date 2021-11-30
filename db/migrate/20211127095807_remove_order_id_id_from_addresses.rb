class RemoveOrderIdIdFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :order_id_id, :refrences
  end
end
