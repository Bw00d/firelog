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

	# scope :jan, -> {where(:date => Date.new(1).all_month) }
	# scope :feb, -> {where(:date => Date.new(2).all_month) }
	# scope :mar, -> {where(:date => Date.new(3).all_month) }
	# scope :apr, -> {where(:date => Date.new(4).all_month) }



end
