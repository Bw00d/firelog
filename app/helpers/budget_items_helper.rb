module BudgetItemsHelper
  def total_budget(budget_items)
   budget_items.pluck(:amount).sum
  end
end