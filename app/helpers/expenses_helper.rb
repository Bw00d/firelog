module ExpensesHelper

	def category_array(expense)
		array = []
		Category.all { |c| array << c.description}
		array.join(",")
	end

	def total_expenses(month)
		find_expenses_by_month(month).pluck(:amount).sum
	end

	def find_expenses_by_month(month)
		Expense.where('extract(month from date) = ?', month)
	end

end
