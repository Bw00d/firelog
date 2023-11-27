class Budget < ApplicationRecord
  belongs_to :user
  has_many :budget_items
end
