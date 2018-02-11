json.extract! employee, :id, :user_id, :company_id, :address_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
