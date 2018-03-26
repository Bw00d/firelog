class AddPaymentIdToExpenses < ActiveRecord::Migration[5.0]
  def change
  	add_column :expenses, :payment_id, :integer
  end
end
