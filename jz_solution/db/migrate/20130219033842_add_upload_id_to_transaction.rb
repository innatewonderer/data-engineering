class AddUploadIdToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :upload_id, :integer
  end
end
