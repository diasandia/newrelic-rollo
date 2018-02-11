json.extract! address, :id, :country, :state, :postal_code, :address_line_one, :address_line_two, :created_at, :updated_at
json.url address_url(address, format: :json)
