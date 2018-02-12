class Address < ApplicationRecord
	has_many :user_companies
	has_many :company_addresses
	has_many :companies, through: :company_addresses
	has_many :users
end
