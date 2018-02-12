require 'elasticsearch/model'

class User < ApplicationRecord
	include Elasticsearch::Model

	has_many :user_companies
	has_many :companies, through: :user_companies
	has_many :addresses, through: :user_companies, source: :address

	def as_indexed_json
	  self.as_json({
	    only: [:id, :first_name, :last_name, :email, :job_title],
	  })
	end
end
