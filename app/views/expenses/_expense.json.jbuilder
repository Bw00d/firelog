json.extract! expense, :id, :amount, :date, :category, :vendor, :comment, :created_at, :updated_at
json.url expense_url(expense, format: :json)