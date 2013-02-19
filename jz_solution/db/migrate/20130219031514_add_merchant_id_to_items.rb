class AddMerchantIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :merchant_id, :integer
  end
end
