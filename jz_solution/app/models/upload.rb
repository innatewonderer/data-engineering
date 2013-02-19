class Upload < ActiveRecord::Base
  
  has_many :transactions
  attr_accessible :file_name, :revenue

def revenue 
	transactions.inject(0){|sum, transaction| sum + transaction.total }
end

 def self.import(*arg, file_name)
 	upload = Upload.create(:file_name => file_name)
 	CSV.new(*arg, headers: true, :col_sep => "\t").each do |row|
 		
 		customer = Customer.find_or_create_by_name(row[0])
 		item = Item.find_or_create_by_description_and_price(row[1], row[2])
 		merchant = Merchant.find_or_create_by_name_and_address(row[5], row[4])
 		merchant.items << item
 		transaction = Transaction.create(:customer => customer, :item => item, :count => row[3])
 		upload.transactions << transaction
 	end
 	upload
 end

 # def self.import(file, file_name)
 # 	upload = Upload.create(:file_name => file_name)
 # 	CSV.new(file, headers: true, :col_sep => "\t").each do |row|
 # 		customer = Customer.find_or_create_by_name(row[0])
 # 		item = Item.find_or_create_by_description_and_price(row[1], row[2])
 # 		merchant = Merchant.find_or_create_by_name_and_address(row[5], row[4])
 # 		merchant.items << item
 # 		transaction = Transaction.create(:customer => customer, :item => item, :count => row[3])
 # 		upload.transactions << transaction
 # 		upload.save!
 # 	end
 # 	upload
 # end
end