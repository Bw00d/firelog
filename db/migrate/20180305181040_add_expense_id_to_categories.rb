class AddExpenseIdToCategories < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :expense_id, :integer
  end
end
