# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Address.destroy_all

25.times do |user|
	first_name = Faker::Name.first_name
	last_name = Faker::Name.last_name

	User.create!(
			first_name: first_name,
			last_name: last_name,
			email: Faker::Internet.email(first_name + last_name),
			phone_number: Faker::PhoneNumber.cell_phone,
			job_title: Faker::Job.title
			)
end

25.times do |address|
	Address.create!(
		country: Faker::Address.country,
		state: Faker::Address.state,
		postal_code: Faker::Address.postcode, 
		address_line_one: Faker::Address.street_address,
		address_line_two: Faker::Address.secondary_address
		)
end

25.times do |company|
	Company.create!(
		company_name: Faker::Company.name
    company_size: 
		)
end

 create_table :companies do |t|
      t.string :company_name
      t.string :company_size
Faker::Company.name #=> "Hirthe-Ritchie"

Faker::Company.suffix #=> "Group"

# Generate a buzzword-laden catch phrase.
Faker::Company.catch_phrase #=> "Business-focused coherent parallelism"

Faker::Company.buzzword #=> "Business-focused"

# When a straight answer won't do, BS to the rescue!
Faker::Company.bs #=> "empower one-to-one web-readiness"

Faker::Company.ein #=> "34-8488813"

Faker::Company.duns_number #=> "08-341-3736"

# Get a random company logo url in PNG format.
Faker::Company.logo #=> "https://pigment.github.com/fake-logos/logos/medium/color/5.png"

Faker::Company.swedish_organisation_number #=> "7962578022"

Faker::Company.french_siren_number #=> "819489626"

Faker::Company.french_siret_number #=> "81948962600013"

Faker::Company.norwegian_organisation_number #=> "839071558"

# Generate an Australian Business Number
Faker::Company.australian_business_number #=> "81137773602"

# Get a random profession
Faker::Company.profession #=> "firefighter"