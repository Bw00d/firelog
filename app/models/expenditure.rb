class Expenditure < ApplicationRecord

  def total
    total = 0
    self.each { |n| total += n.amount }
    total
  end
end
