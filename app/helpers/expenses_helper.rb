module ExpensesHelper

	def category_array(expense)
		array = []
		Category.all { |c| array << c.description}
		array.join(",")
	end

	def total_expenses(expenses)
		expenses.pluck(:amount).sum
	end

	def find_expenses_by_month(month, user)
		expenses = current_user.expenses.where('extract(year  from date) = ?', Date.current.year)
		expenses.where('extract(month from date) = ?', month)
	end

	def make_pie(expenses)
		expenses.map {|k, v| [get_category(k).description, v] }
	end

	def get_category(id)
		Category.find(id)
	end
end
