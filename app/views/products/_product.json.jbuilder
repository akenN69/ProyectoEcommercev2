json.extract! product, :id, :name, :photo, :unit_price, :description, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
