class CreateBudgetItems < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_items do |t|
      t.integer :budget_id
      t.decimal :amount
      t.string :description
    end
  end
end
