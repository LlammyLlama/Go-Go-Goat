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
Goat.create(name: "joey", age: 5, services: "cuddle-buddy", rate_per_day: 5, appetite: 7, description: "lovely", image: "https://images.newscientist.com/wp-content/uploads/2019/07/09172512/205582.jpg?crop=16:9,smart&width=1200&height=675&upscale=true", user: steph)

Goat.create(name: "bess", age: 10, services: "compost-muncher", rate_per_day: 10, appetite: "trash", description: "grumpy", image: "https://cdn.britannica.com/29/529-050-6B31311A/Angora-goat.jpg", user: chen)

Goat.create(name: "laddie", age: 7, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "serious", image: "https://cdn.britannica.com/41/119041-050-8B84B093/goat.jpg", user: ben)

puts "goats created"
