module ChartsHelper
  # def total_expenses(expenses)  This helper method is also in expenses and is redundant. 
  #   expenses.pluck(:amount).sum
  # end

  def monthly_average(expenses)
    divisor = expenses.group_by { |e| e.date.beginning_of_month }.count if expenses
    total_expenses(expenses)/divisor
  end

  def group_by_categories(expenses)
    expenses.group_by { |e| e.category_id }
  end

  def category_name(expenses)
    Category.find(group_by_categories(expenses).first.first).description
  end

  def category_sum(expenses)

  end

  def display_category_details(expenses)
  end

  def sum_category(expenses, category)
    total = 0
    expenses.each do |e| 
      if e.category_id == category.id 
        total += e.amount 
      end
    end
    total
  end

  def display_average_expenses_by_category(expenses)
    Category.all.each do |c|
      c.description  
      sum_category(expenses, c)
    end
  end

end