class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.date :date
      t.integer :category
      t.integer :vendor
      t.text :comment

      t.timestamps
    end
  end
end
