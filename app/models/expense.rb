class Expense < ApplicationRecord

has_one :category
	# def category
	# 	Category.find(self.category_id).description
	# end

	def vendor
		Vendor.find(self.vendor_id).name
	end
end
