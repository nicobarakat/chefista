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
  remote_photo_url: cl_image_path("GordonRamsey.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Helena Rizzo",
  title: "Brazilian chef, elected Female Chef of the Year in 2014.",
  price: 150,
  remote_photo_url: cl_image_path("HelenaRizzo.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Feiko Boerstra",
  title: "Meatball marinara master",
  price: 0,
  remote_photo_url: cl_image_path("Feiko.jpg"),
  address: "Overhoeksplein",
  description: "I have been a food lover all my life, and from the time I baked my own apple pies in winter, I have developed myself at Le Cordon Bleu in Paris. But after all, I love stamppotten and meatballs the most.
  Loved for being frugal and filling, stamppotten are also very healthy. Potatoes are packed with potassium and vitamin C, while the ‘’queen of greens’' contains numerous health benefiting polyphenolic flavonoid compounds such as lutein, zea-xanthin and beta-carotene, and is said to be richer source of vitamins than any other green leafy vegetable."
  })
chef.save!

chef = Chef.new({
  name: "Jamie Oliver",
  title: "British celebrity chef and restaurateur.",
  price: 70,
  remote_photo_url: cl_image_path("JamieOliver.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Dominique Crenn",
  title: "French chef owner of 2 Michelin stars Atelier Crenn.",
  price: 110,
  remote_photo_url: cl_image_path("DominiqueCrenn.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Hélène Darroze",
  title: "French chef, 2 Michelin stars and owner of 3 restaurants.",
  price: 270,
  remote_photo_url: cl_image_path("HeleneDarroze.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "André Chiang",
  title: " Taiwanese chef former head of the three Michelin star restaurant.",
  price: 250,
  remote_photo_url: cl_image_path("AndreChiang.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Anthony Bourdain",
  title: "Veteran of numerous professional kitchens.",
  price: 260,
  remote_photo_url: cl_image_path("AnthonyBourdain.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!

chef = Chef.new({
  name: "Alain Ducasse",
  title: "French-born Monégasque chef. 3 stars in the Michelin Guide.",
  price: 260,
  remote_photo_url: cl_image_path("AlainDucasse.jpg"),
  address: Faker::Address.street_address #=> "282 Kevin Brook"
  })
chef.save!











