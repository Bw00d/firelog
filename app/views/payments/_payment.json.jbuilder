json.extract! payment, :id, :name, :created_at, :updated_at
json.url payment_url(payment, format: :json)