json.extract! user, :id, :name, :rut, :address, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
