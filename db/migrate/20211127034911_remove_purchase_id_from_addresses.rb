class RemovePurchaseIdFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :purchase_id, :integer
  end
end
