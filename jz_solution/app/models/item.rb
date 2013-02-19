class Item < ActiveRecord::Base
  attr_accessible :description, :price, :merchant_id

  belongs_to :merchant
end
