# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  user = User.create!(name: Faker::SiliconValley.character)
 end
 
 10.times do
  post = Post.create!(url: Faker::SiliconValley.url, user_id: rand(1..10))
 end
 
 10.times do
  comment = Comment.create!(content: Faker::SiliconValley.quote, user_id: rand(1..5), post_id: rand(1..10))
 end