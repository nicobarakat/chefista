# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |x|
  Chef.create(name: Faker::Name.name, title: Faker::Name.title, rating: Faker::Number.between(1, 10), price: Faker::Number.between(10, 20))
end