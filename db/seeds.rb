# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chef.create!(name: "Gordon Ramsey", title: "Professional cook and TV host", categories: "French", price: 100)
Chef.create!(name: "Jamie Oliver", title: "Experienced in modern cuisine", categories: "Italian", price: 200)
Chef.create!(name: "Anthony Bourdain", title: "All-around styles", categories: ["Asian", "French", "Italian"], price: 300)
Chef.create!(name: "Wolfgang Puck", title: "Veteran cook", categories: "European", price: 400)
