User.destroy_all
Address.destroy_all
Company.destroy_all

30.times do |n|
	first_name = Faker::Name.first_name
	last_name = Faker::Name.last_name

	user = User.create!(
			first_name: first_name,
			last_name: last_name,
			email: Faker::Internet.email(first_name + last_name),
			phone_number: Faker::PhoneNumber.cell_phone,
			job_title: Faker::Job.title
			)

	address = Address.create!(
			country: Faker::Address.country,
			state: Faker::Address.state,
			postal_code: Faker::Address.postcode, 
			address_line_one: Faker::Address.street_address,
			address_line_two: Faker::Address.secondary_address
			)

	company = Company.create!(
			company_name: Faker::Company.name,
	   	company_size: "101-1000"
			)

	user_company = UserCompany.create!(
			user: User.find(user.id),
			address: Address.find(address.id),
			company: Company.find(company.id)
			)

	company_address = CompanyAddress.create!(
		company: Company.find(company.id),
		address: Address.find(address.id)
		)
end