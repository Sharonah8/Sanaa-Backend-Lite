# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 Seeding begins here...."

puts "Deleting old data..."
Review.destroy_all
User.destroy_all
ArtPiece.destroy_all

# Seed your database here
#make 5 users
puts "Creating users..."
user1 = User.create(username: Faker::Name.name, email:"sanaa_art@gmail.com", password:"sanaa")

# 5.times do |i|
#     User.create(name:Faker::Name.name, email:Faker::Internet.email, password_digest:Faker::Internet.password)
# end

#make 5 Arts
puts "Creating Arts..."
arts1 = ArtPiece.create(image_url: "", title: "The Awakening", description: "The Awakening inspired by", price: Faker::Commerce.price)
arts2 = ArtPiece.create(image_url: "", title: "The Potrait", description: "The Potrait inspired by", price: Faker::Commerce.price)
arts3 = ArtPiece.create(image_url: "", title: "The Mystery", description: "The Mystery inspired by", price: Faker::Commerce.price)
arts4 = ArtPiece.create(image_url: "", title: "The Culture", description: "The Culture inspired by The African continent.", price: Faker::Commerce.price)
arts5 = ArtPiece.create(image_url: "", title: "The Guide", description: "The Guide inspired by", price: Faker::Commerce.price)

puts "Creating Review..."
reviews1 = Review.create(comment: "Great Inspiration.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
reviews2 = Review.create(comment: "My Favourite!", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
reviews3 = Review.create(comment: "So much going behind this.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
reviews4 = Review.create(comment: "Take me back to the roots.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
reviews5 = Review.create(comment: "This is creative.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")

puts "✅ Done seeding!"



# 5.times do |i|
#     User.create(name:Faker::Name.name, email:Faker::Internet.email, password_digest:Faker::Internet.password)
#     3.times do
#         Art.create(user_id: i, image_url: "", name_or_title:Faker::Art.title, description: "The Mystery inspired by",price: Faker::Commerce.price )
#         end
#     5.times do |j|
#         Review.create(comment: "This is creative.", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
#         end
#     end
# end

