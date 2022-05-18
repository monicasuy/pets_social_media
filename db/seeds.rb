# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "Carrer Mallorca 272 08037 Barcelona",
    email: Faker::Internet.email,
    password: 'password'
  )
  new_user1 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "Assemblea de Catalunya 9-12 08911 Badalona",
    email: Faker::Internet.email,
    password: 'password'
  )
  puts "User created"

  dog1 = Pet.create(name: "Nolan", breed: "American Staffordshire Terrier", size: "medium", sex: "male",
  description: "Nolan loves eating apples, he's super friendly and playful and loves cuddling.
  He is so calm and well behaved. So easy to love", user: User.first)

  dog2 = Pet.create(name: "Pepe", breed: "American Staffordshire Terrier", size: "medium", sex: "male",
  description: "Nolan loves eating apples, he's super friendly and playful and loves cuddling.
  He is so calm and well behaved. So easy to love", user: User.last)

  puts "Nolan created"

  dog1.photos.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/c_fill/v1/production/7j5sq0q38y3q5nc2zxcwp3emxgtr'), filename: 'Nolan')
  dog2.photos.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/c_fill/v1/production/zyieb3860e5tpmwn4yhe1dg8nxfq'), filename: 'Nolan')

  puts 'Photo attached to Nolan'
