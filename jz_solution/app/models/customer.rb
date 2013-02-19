class Customer < ActiveRecord::Base
  attr_accessible :name

  has_many :transactions
end
