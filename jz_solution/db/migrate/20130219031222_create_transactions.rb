class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :count
      t.integer :customer_id
      t.integer :item_id
      t.integer :merchant_id

      t.timestamps
    end
  end
end
