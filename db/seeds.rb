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
user1 = User.create!(username: "Sherly Willms", email:"sanaa_art@gmail.com", password:"san66aa")

# 5.times do |i|
#     User.create(name:Faker::Name.name, email:Faker::Internet.email, password_digest:Faker::Internet.password)
# end

#make 5 Arts
puts "Creating Arts..."
arts1 = ArtPiece.create!(image_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/mother-africa-belinda-williams.jpg", title: "Mother Africa", description: "The root of African beauty is sourced and generated through women who should be acknowledged, valued and appreciated.", price: 200)
arts2 = ArtPiece.create!(image_url: "https://i.pinimg.com/originals/8b/c3/83/8bc3830a6a7f68f7f7c2c8d706d30aa3.jpg", title: "The Peacock", description: "Peacocks are not born beautiful, however. They become so through transformation and growth.A symbol for spectacular beauty, power, strength, confidence, and even divinity.", price: 250)
arts3 = ArtPiece.create!(image_url: "https://cdn.shopify.com/s/files/1/2279/7869/files/rainbow-portrait.jpg", title: "True African Art", description: "A blend of spheres creatively composing a contrasted face illusion of an african woman.", price: 150)
arts4 = ArtPiece.create!(image_url: "https://i.pinimg.com/originals/db/70/48/db704844d1cb6747004a2e6c4a756abf.jpg", title: "The Barrier", description: "A situation and test of times, a call to set-free kids all over World, championing for access to resources.", price: 100)
arts5 = ArtPiece.create!(image_url: "https://en.bcdn.biz/Images/2020/7/23/593af5df-dc7c-4545-8804-2b044a7438bf.jpg", title: "The Tiger", description: "The largest member of the cat family (Felidae), the Tiger symbolizes ambition, courage, precision, enthusiasm and self-confidence.", price: 200)
arts6 = ArtPiece.create!(image_url: "https://mymodernmet.com/wp/wp-content/uploads/2017/08/hyperrealistic-drawings-jono-dry-5.jpg", title: "The Eye", description: "Vision beyond lens, a call to watch out for each other as humans.", price: 150)
arts7 = ArtPiece.create!(image_url: "https://www.artmajeur.com/medias/mini/i/s/isabelle-fisson/artwork/15802642_tariku5.jpg", title: "The Culture Sculpture", description: "Traditional beaded ornaments and necklaces some of which are made from elephant's tail. A woman wearing the necklace made from an elephant's tail signifies that she is married.", price: 200)
arts8 = ArtPiece.create!(image_url: "https://a.1stdibscdn.com/archivesE/upload/10152/44_14/p2060687/P2060687_l.jpeg", title: "Nubian Warrior Sculpture", description: "Archers, formed the core of Nubian armies that vied with Egypt for control over parts of the Nile valley, conquered Egypt in the 8th century BC, and confronted the troops of the Assyrian empire. The skill of Nubian archers made them valued members in the military forces of other lands.", price: 150)
arts9 = ArtPiece.create!(image_url: "https://cdn20.pamono.com/p/s/1/2/1273119_0la6cuenbw/italian-african-ceramic-father-elephant-sculpture-by-vg-design-and-laboratory-department.jpg", title: "Elephant Sculpture", description: "An Elephant symbolizes luck and prosperity, but they are also powerful beings that use their mighty strength to remove obstacles and negative forces. They also represent wisdom, long life, memory and vitality.", price: 100)

# arts2 = ArtPiece.create(image_url: "", title: "The Potrait", description: "The Potrait inspired by", price: Faker::Commerce.price)
# arts3 = ArtPiece.create(image_url: "", title: "The Mystery", description: "The Mystery inspired by", price: Faker::Commerce.price)
# arts4 = ArtPiece.create(image_url: "", title: "The Culture", description: "The Culture inspired by The African continent.", price: Faker::Commerce.price)
# arts5 = ArtPiece.create(image_url: "", title: "The Guide", description: "The Guide inspired by", price: Faker::Commerce.price)

puts "Creating Review..."
reviews1 = Review.create!(comment: "Great Inspiration.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", user_id:1, art_piece_id: 1)
# reviews2 = Review.create!(comment: "My Favourite!", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
# reviews3 = Review.create!(comment: "So much going behind this.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
# reviews4 = Review.create!(comment: "Take me back to the roots.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")
# reviews5 = Review.create!(comment: "This is creative.", name: Faker::Name.name, image_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg")

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

