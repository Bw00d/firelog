class Expense < ApplicationRecord
	has_one :expense

	def category
		Category.find(self.category_id).description
	end
end
