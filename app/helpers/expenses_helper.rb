module ExpensesHelper

	def category_array(expense)
		array = []
		Category.all { |c| array << c.description}
		array.join(",")
	end

	def total_expenses(expenses)
		expenses.pluck(:amount).sum
	end

end
