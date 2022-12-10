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

em = User.create(email: "em@example.com", password: "thesecret")
steph = User.create(email: "steph@example.com", password: "secret")
chen = User.create(email: "chen@example.com", password: "secretagain")
ben = User.create(email: "ben@example.com", password: "secretsss")

puts "users created"

puts "creating goats"
Goat.create(name: "Joey", age: 5, services: "cuddle-buddy", rate_per_day: 9, appetite: 7, description: "Lovely", image: "https://images.newscientist.com/wp-content/uploads/2019/07/09172512/205582.jpg?crop=16:9,smart&width=1200&height=675&upscale=true", user: steph)
Goat.create(name: "Bess", age: 10, services: "compost-muncher", rate_per_day: 10, appetite: "trash", description: "Grumpy", image: "https://cdn.britannica.com/29/529-050-6B31311A/Angora-goat.jpg", user: chen)
Goat.create(name: "Laddie", age: 7, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "Serious", image: "https://cdn.britannica.com/41/119041-050-8B84B093/goat.jpg", user: ben)
Goat.create(name: "Fawn", age: 9, services: "lawn-mower", rate_per_day: 14.40, appetite: "grass", description: "Grumpy", image: "https://cdn.britannica.com/33/533-050-2ED3D8DF/LaMancha-goat.jpg", user: em)
Goat.create(name: "Opal", age: 8, services: "compost-muncher", rate_per_day: 9, appetite: "trash", description: "Serious", image: "https://cdn.britannica.com/61/4561-004-8F878B48/Himalayan-tahr.jpg?s=1500x700&q=85", user: chen)
Goat.create(name: "Fern", age: 9, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "Serious", image: "https://cdn.britannica.com/30/530-050-D13F2127/Boer-goat.jpg", user: steph)
Goat.create(name: "Mona", age: 9, services: "compost-muncher", rate_per_day: 9, appetite: "trash", description: "Lovely", image: "https://cdn.britannica.com/32/532-004-48FC8C78/Nubian-goat.jpg?s=1500x700&q=85", user: em)
Goat.create(name: "Fitz", age: 3, services: "cuddle-buddy", rate_per_day: 10.50, appetite: "5", description: "Lovely", image: "https://cdn.britannica.com/31/531-050-B54FC5C5/Oberhasli-goat.jpg", user: em)
Goat.create(name: "Hank", age: 4, services: "cuddle-buddy", rate_per_day: 9, appetite: "6", description: "Lovely", image: "https://cdn.britannica.com/27/527-050-1B9E9923/Saanen-goat.jpg", user: chen)
Goat.create(name: "Angus", age: 4, services: "cuddle-buddy", rate_per_day: 15, appetite: "7", description: "Lovely", image: "https://cdn.britannica.com/26/526-050-18034DE7/Toggenburg-goat.jpg", user: chen)
Goat.create(name: "Ozzy", age: 5, services: "cuddle-buddy", rate_per_day: 10, appetite: "8", description: "Lovely", image: "https://media.istockphoto.com/id/177369626/photo/funny-goat-puts-out-its-tongue.jpg?s=612x612&w=0&k=20&c=YlmA4-C8o5XFsoYMLK-VBnhQku1tmeBm7DJBkrzJuGw=", user: steph)
Goat.create(name: "Flora", age: 12, services: "lawn-mower", rate_per_day: 19, appetite: "grass", description: "Serious", image: "https://upload.wikimedia.org/wikipedia/commons/d/da/Goat.jpg", user: steph)
Goat.create(name: "Elmer", age: 13, services: "compost-muncher", rate_per_day: 20, appetite: "trash", description: "Grumpy", image: "https://images.unsplash.com/photo-1524024973431-2ad916746881?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z29hdHxlbnwwfHwwfHw%3D&w=1000&q=80", user: ben)
Goat.create(name: "Milo", age: 5, services: "cuddle-buddy", rate_per_day: 10, appetite: "10", description: "Lovely", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Boer_Goat_%288742860752%29.jpg/2397px-Boer_Goat_%288742860752%29.jpg", user: em)
Goat.create(name: "Finn", age: 6, services: "lawn-mower", rate_per_day: 12, appetite: "grass", description: "Grumpy", image: "https://images.squarespace-cdn.com/content/v1/5ebcba202059dd16b2943df1/1599693724941-ISUXJZUC94IA7821MS08/DSC_0259+%283%29.jpg", user: ben)
Goat.create(name: "Woddy", age: 6, services: "lawn-mower", rate_per_day: 17, appetite: "grass", description: "Serious", image: "https://a-z-animals.com/media/2018/09/Goat-mountain.jpg", user: steph)
Goat.create(name: "Einstein", age: 8, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "Lovely", image: "https://images.squarespace-cdn.com/content/v1/5ea3b1cda6b8f22dbf0379ef/1588606266181-2DH8ZRXC24XYW1VMX629/VH+Goats+%282%29.jpg", user: ben)
Goat.create(name: "Nora", age: 9, services: "lawn-mower", rate_per_day: 10, appetite: "grass", description: "Serious", image: "https://images.squarespace-cdn.com/content/v1/5ebcba202059dd16b2943df1/1597037421064-N19ANGM4S86A42V27754/DSC_0156%252B%2525282%252529.jpg", user: steph)
Goat.create(name: "Mellie", age: 12, services: "compost-muncher", rate_per_day: 10, appetite: "trash", description: "Lovely", image: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i7GLSO4jgrEE/v1/-1x-1.jpg", user: em)
Goat.create(name: "Edgar", age: 10, services: "lawn-mower", rate_per_day: 15, appetite: "grass", description: "Serious", image: "https://static.wixstatic.com/media/4bf055_54fe1ce5349848a284f1f47cae562180~mv2_d_4272_2848_s_4_2.jpg/v1/crop/x_9,y_0,w_3821,h_2848/fill/w_864,h_644,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/IMG_0816_JPG.jpg", user: em)


puts "goats created"
