class CreateExpenditures < ActiveRecord::Migration[5.0]
  def change
    create_table :expenditures do |t|
      t.float :amount
      t.date :due_date
      t.text :comment
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
