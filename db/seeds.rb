# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

21.times do
  # rubocop: disable LineLength
  Restaurant.create(name: Faker::Hipster.word, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: category.sample)
  # rubocop: enable LineLength
end
