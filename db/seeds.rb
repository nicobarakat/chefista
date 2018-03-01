# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
9.times do |x|
  chef = Chef.new(name: Faker::Name.name, title: Faker::Name.title, price: Faker::Number.between(10, 20), address: Faker::Address.street_address)
  chef.remote_photo_url = "https://source.unsplash.com/1600x900/?cook"
  chef.save
end
