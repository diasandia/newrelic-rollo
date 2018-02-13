require 'elasticsearch/model'

class User < ApplicationRecord
	include Elasticsearch::Model 
	include Elasticsearch::Model::Callbacks

	has_many :user_companies
	has_many :companies, through: :user_companies
	has_many :addresses, through: :user_companies, source: :address

	# elasticsearch mappings
  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :first_name, analyzer: 'english'
      indexes :last_name, analyzer: 'english'
      indexes :email, analyzer: 'english'
      indexes :job_title, analyzer: 'english'
    end
  end

	def self.search(query) 
		__elasticsearch__.search( 
		{ 
			query: { 
				multi_match: { 
					query: query, 
					fields: ['first_name', 'last_name', 'email', 'job_title'] 
				} 
			},
			highlight: { 
				pre_tags: ['<mark>'], 
				post_tags: ['</mark>'], 
				fields: { 
					first_name: {}, 
					last_name: {},
					email: {}, 
					job_title: {} 
				} 
			},
			suggest: { 
				text: query, 
				first_name: { 
					term: { 
						size: 1, 
						field: :first_name 
					} 
				}, 
				last_name: { 
					term: { 
						size: 1, 
						field: :last_name 
					} 
				}, 
				email: { 
					term: { 
						size: 1, 
						field: :email 
					} 
				},
				job_title: { 
					term: { 
						size: 1, 
						field: :job_title 
					} 
				},
			}
		})
	end 

	def as_indexed_json(options={})
	  self.as_json({
	    only: [:first_name, :last_name, :email, :job_title],
	  })
	end
end
