class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
