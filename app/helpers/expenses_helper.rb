module ExpensesHelper

	def category_array(expense)
		array = []
		Category.all { |c| array << c.description}
		array.join(",")
	end

end
