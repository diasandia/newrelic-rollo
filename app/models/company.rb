class Company < ApplicationRecord
	has_many :user_companies
	has_many :users, through: :user_companies
	has_many :company_addresses
	has_many :addressess, through: :company_addresses
end
