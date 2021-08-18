# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USER SEEDS
romain = User.new(email: 'romain@romain.com', first_name: 'Romain', last_name: 'Losey', bio: 'Schlague', password: '12345678', password_confirmation: '12345678')
romain.save!
marc = User.new(email: 'marc@marc.com', first_name: 'Marc', last_name: 'Leswag', bio: 'Bullish', password: '12345678', password_confirmation: '12345678')
marc.save!

#POST SEEDS
post1 = Post.new(title: 'Vaincre le schlague', text: 'pas facile', category: "curated", user: romain)
post1.save!
post2 = Post.new(title: "Comment gérer une équipe d'incompétents", text: 'vraiment pas facile', category: "curated", user: marc)
post2.save!
