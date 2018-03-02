require 'cloudinary'
include CloudinaryHelper
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 9.times do |x|
#   chef = Chef.new(name: Faker::Name.name, title: Faker::Name.title, price: Faker::Number.between(10, 20), address: Faker::Address.street_address)
#   chef.remote_photo_url = "https://source.unsplash.com/1600x900/?cook"
#   chef.save
# end

chef = Chef.new({
  name: "Gordon Ramsey",
  title: "Professional chef and TV host.",
  price: 100,
  remote_photo_url: cl_image_path("GordonRamsey.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Thomas Keller",
  title: "American chef, restaurateur, and cookbook writer.",
  price: 150,
  remote_photo_url: cl_image_path("ThomasKeller.jpg")
  })
chef.save!

chef = Chef.new({
  name: "René Redzepi",
  title: "Danish chef and owner of the 2 Michelin star restaurant Noma.",
  price: 200,
  remote_photo_url: cl_image_path("ReneRedzepi.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Jamie Oliver",
  title: "British celebrity chef and restaurateur.",
  price: 70,
  remote_photo_url: cl_image_path("JamieOliver.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Alex Atala",
  title: "Brazilian chef who runs the restaurant D.O.M. in São Paulo.",
  price: 110,
  remote_photo_url: cl_image_path("AlexAtala.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Emeril Lagasse",
  title: "American celebrity chef, author, and Best Recipe award winner.",
  price: 270,
  remote_photo_url: cl_image_path("EmerilLagasse.jpg")
  })
chef.save!

chef = Chef.new({
  name: "André Chiang",
  title: " Taiwanese chef former head of the three Michelin star restaurant.",
  price: 250,
  remote_photo_url: cl_image_path("AndreChiang.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Anthony Bourdain",
  title: "Veteran of numerous professional kitchens",
  price: 260,
  remote_photo_url: cl_image_path("AnthonyBourdain.jpg")
  })
chef.save!

chef = Chef.new({
  name: "Alain Ducasse",
  title: "French-born Monégasque chef. 3 stars in the Michelin Guide.",
  price: 260,
  remote_photo_url: cl_image_path("AlainDucasse.jpg")
  })
chef.save!











