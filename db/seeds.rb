# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying previous stuff"
User.destroy_all
Post.destroy_all
puts "Adding new stuff"#USER SEEDS
romain = User.new(email: "romain@fuckthisshit.com", first_name: 'Romain', last_name: 'Losey', bio: 'Schlague', password: '12345678', password_confirmation: '12345678')
romain.save!
marc = User.new(email: "marc@fuckthisshit.com", first_name: 'Marc', last_name: 'Leswag', bio: 'Bullish', password: '12345678', password_confirmation: '12345678')
marc.save!#POST SEEDS
post1 = Post.new(title: 'Vaincre le schlague', text: 'pas facile', user: romain)
post1.save!
post2 = Post.new(title: "Comment gérer une équipe d'incompétents", text: 'vraiment pas facile', user: marc)
post2.save!


