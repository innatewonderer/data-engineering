class Transaction < ActiveRecord::Base
	attr_accessible :count, :customer_id, :item_id, :merchant_id,
					:customer, :item, :merchant, :upload_id
  
  # check if upload belonging needed ?
  belongs_to :upload
  belongs_to :customer
  belongs_to :item

  def total
    count.to_i * item.price.to_i
  end

end