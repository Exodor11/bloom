# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying previous stuff"
PostTag.destroy_all
UserTag.destroy_all
Contact.destroy_all
Post.destroy_all
Tag.destroy_all
User.destroy_all

puts "Adding new stuff"

#TAG SEEDS
tag1 = Tag.create(name:"Business", category:"business")
tag2 = Tag.create(name:"technology", category:"technology")
tag3 = Tag.create(name:"finance", category:"finance")
tag4 = Tag.create(name:"entrepreneurship", category:"entrepreneurship")
tag5 = Tag.create(name:"sciences", category:"sciences")
tag6 = Tag.create(name:"psychology", category:"psychology")
tag7 = Tag.create(name:"sociology", category:"sociology")
tag8 = Tag.create(name:"philosophy", category:"philosophy")
tag9 = Tag.create(name:"politics", category:"politics")
tag10 = Tag.create(name:"health", category:"health")



#USER SEEDS + AVATAR
romain = User.new(email: "romain@guilde.com", first_name: 'Romain', last_name: 'Losey', bio: 'Busy building a life I do not need to escape from', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/romain-losey/' , password: '12345678', password_confirmation: '12345678')
romain.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624455076/taxkkidiqfgsoecqktb3.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
romain.save!


marc = User.new(email: "marc@guilde.com", first_name: 'Marc', last_name: "L'Eplattenier", bio: 'Busy building a life I do not need to escape from', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/mleplattenier/', password: '12345678', password_confirmation: '12345678')
marc.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624023909/wfliysfgym33qlzi0dsd.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
marc.save!

nico = User.new(email: "nico@guilde.com", first_name: 'Nicholas', last_name: 'Martin', bio: 'You miss 100% of the shots you don’t take', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nicholas-martin-777471203/', password: '12345678', password_confirmation: '12345678')
nico.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624437133/tppabzxei90i8j8joyps.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nico.save!

nathan = User.new(email: "nathan@guilde.com", first_name: 'Nathan', last_name: 'Cohen', bio: 'Exploring space with my amazing coding buddies', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
nathan.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624987859/tr4zygrx5akfawfoh4vj.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nathan.save!


#USER_TAGS SEEDS
romain.tags << [tag1, tag2, tag3, tag4]
romain.save

marc.tags << [tag2, tag3, tag8, tag6]
marc.save

nico.tags << [tag4, tag2, tag9, tag8]
nico.save

nathan.tags << [tag1, tag2, tag4, tag10]
nathan.save


#USER_CONTACTS SEEDS
# FOLLOWER = FOLLOWED (=> User.followers = list of users who follow User)
# FOLLOWING = FOLLOWING (=> User.followings = list of users who are followed by User)
contact1 = Contact.create(follower: romain, following: marc)
contact2 = Contact.create(follower: romain, following: nico)
contact3 = Contact.create(follower: romain, following: nathan)
contact4 = Contact.create(follower: nathan, following: romain)

#POST SEEDS
post1 = Post.new(title: 'Vaincre le schlague', text: 'pas facile', user: romain)
post1.save!
post2 = Post.new(title: "Comment gérer une équipe d'incompétents", text: 'vraiment pas facile', user: marc)
post2.save!

#POST TAGS SEEDS
post1.tags << [tag1, tag2, tag3, tag4]
post1.save

post2.tags << [tag2, tag3, tag8, tag6]
post2.save








