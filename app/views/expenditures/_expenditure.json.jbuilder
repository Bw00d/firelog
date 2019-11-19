json.extract! expenditure, :id, :amount, :due_date, :comment, :user_id, :description, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
