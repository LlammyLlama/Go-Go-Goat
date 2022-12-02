# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying bookings"
Booking.destroy_all
puts "destroying goats"
Goat.destroy_all
puts "destroying users"
User.destroy_all

puts "creating users"

steph = User.create(email: "steph@example.com", password: "secret")
chen = User.create(email: "chen@example.com", password: "secretagain")
ben = User.create(email: "ben@example.com", password: "secretsss")

puts "users created"

puts "creating goats"
Goat.create(name: "joey", age: 5, services: "cuddle-buddy", rate_per_day: 5, appetite: 7, description: "lovely", image: "https://unsplash.com/photos/bhD6TGRjnWc", user: steph)

Goat.create(name: "bess", age: 10, services: "compost-muncher", rate_per_day: 10, appetite: "trash", description: "grumpy", image: "https://unsplash.com/photos/BjGj8x5cdSk", user: chen)

Goat.create(name: "laddie", age: 7, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "serious", image: "https://unsplash.com/photos/wFb71uuC5KY", user: ben)

puts "goats created"
