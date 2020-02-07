json.extract! projection, :id, :due_date, :user_id, :description, :created_at, :updated_at
json.url projection_url(projection, format: :json)
