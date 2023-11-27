class BudgetItem < ApplicationRecord
  belongs_to :budget

  def category
    Category.find(self.category_id).description
  end
end
