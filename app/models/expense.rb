class Expense < ApplicationRecord
validates :date, presence: :true
validates :category_id, presence: :true
validates :amount, presence: :true
has_one :category
has_one :payment


	def category
		Category.find(self.category_id).description
	end

	def vendor
		Vendor.find(self.vendor_id).name
	end

	def payment
		Payment.find(self.payment_id)
	end

	def self.search(search)
 		where('extract(month from date) = ?', "#{search}")
	end

  def self.year(year)
    where('extract(year from date) = ?', "#{year}")
  end

  def self.month(month)
    where('extract(month from date) = ?', "#{month}")
  end

  # def expense_by_month
  #   # expenses_by_month = expenses.group_by { |expense|  expense.date.month }
  #   summed = [['Jan', 0.00],['Feb', 0.00],['Mar', 0.00],['Apr', 0.00],['May', 0.00],['Jun', 0.00],
  #              ['Jul', 0.00],['Aug', 0.00],['Sep', 0.00],['Oct', 0.00],['Nov', 0.00],['Dec', 0.00]]  
  #   self.each do |e|
  #     summed[e.date.month - 1][1] += e.amount
  #   end
  #   summed
  # end
end
