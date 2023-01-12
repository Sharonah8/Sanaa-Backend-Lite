# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 Seeding begins here...."

puts "Deleting old data..."
Feedback.destroy_all
User.destroy_all
Art.destroy_all

# Seed your database here
#make 10 users
puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
user4 = User.create(name: Faker::Name.name)
user5 = User.create(name: Faker::Name.name)

#make 5 Arts
puts "Creating Arts..."
arts1 = Art.create(image_url: "", title: "The Awakening", description: "The Awakening inspired by", price: Faker::Commerce.price)
arts2 = Art.create(image_url: "", title: "The Potrait", description: "The Potrait inspired by", price: Faker::Commerce.price)
arts3 = Art.create(image_url: "", title: "The Mystery", description: "The Mystery inspired by", price: Faker::Commerce.price)
arts4 = Art.create(image_url: "", title: "The Culture", description: "The Culture inspired by The African continent.", price: Faker::Commerce.price)
arts5 = Art.create(image_url: "", title: "The Guide", description: "The Guide inspired by", price: Faker::Commerce.price)

puts "Creating Feedbacks..."
feedbacks1 = Feedback.create(comment: "Great Inspiration.", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking3.id, user_id: user2.id)
feedbacks2 = Feedback.create(comment: "My Favourite!", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking1.id, user_id: user1.id)
feedbacks3 = Feedback.create(comment: "So much going behind this.", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking1.id, user_id: user1.id)
feedbacks4 = Feedback.create(comment: "Take me back to the roots.", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking2.id, user_id: user4.id)
feedbacks5 = Feedback.create(comment: "This is creative.", name: Faker::Name.name, photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking5.id, user_id: user3.id)

puts "✅ Done seeding!"

