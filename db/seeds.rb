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
PostSaved.destroy_all
PostUpvoted.destroy_all
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
post1 = Post.new(title: 'How to Identify a Pseudo-Smart Person', 
                description: "Just sharing some wisdom on the controversial topic of smartness",
                text: 'Over my career as a copywriter, I’ve interviewed dozens of top performers. I’ve been privileged to have genuine, deep 1-on-1 conversations with heads of multi-million dollar businesses. These are aggressively smart people, who make me feel humbled just by their presence.
                It’s comical how different these people are from my peers. Many of my acquaintances feel extremely smart. They have zero achievements to back up their ego. Even when every piece of evidence shows that they’re not so smart, they find a smart reason why the world is wrong and they’re right.
                That’s not how top performers think. Here are four things I noticed truly smart people never do.
                Want to read this story later? Save it in Heyday.
                1. They don’t overthink
                Instead, they test things with brutal immediacy.
                Ironically, a hallmark trait of highly intelligent people is humility. Intelligence is a by-product of experience and knowledge, and smart people are painfully aware of the things they don’t know or can’t do.
                When you think about it, overthinking is just a state of inflated ego. You think that you can ‘think up’ an answer to your problem. You think that you’re smart enough to solve a problem just in your head.
                That’s not what smart people do. Smart people embrace what the author of The Black Swan calls the anti-library: a set of all the things we don’t know. Smart people know that the answers to their problems cannot be found in their head.
                Instead, they take immediate action. They’ll sign contracts on an impulse and cut them off just as brutally. If they find something interesting, they’ll turn 140% of their energy to that thing alone, and then leave it as soon as they realize it didn’t work.
                Here’s how to identify a pseudo-smart person: ask them what they’ve actually done in order to achieve their goals. If they start justifying their inaction, you’re dealing with a pseudo-intellectual.
                2. They don’t do small talk
                Instead, they lead with borderline honesty and directness.
                Another thing that stands out with aggressively smart people is their directness and honesty.
                Truly intelligent people value their time, and they value yours. That’s why you’ll seldom hear a smart person chit-chatting about their vacation for 30 minutes. They just don’t see the point.
                I think it’s a sort of a filter. It’s not that smart people don’t enjoy being nice — or that they don’t know how to be pleasant.
                I think they do it to gauge your reaction. If you appreciate them being direct, they know they’re dealing with another smart person. If you get confused and insulted by their directness — they’ll instantly know you’re probably just trying to look smart.
                3. They don’t need a sophisticated reason to act
                Instead, they often act on an impulse.
                Intelligent people will sometimes act childishly, but do not mistake their free-willed behavior with aimlessness.
                Many of the people I’ve interviewed explain their actions via seemingly arbitrary reasons. They’ll say things “because I like it” or “it just feels good,” which can make you think that they don’t know what they’re doing.
                First of all, truly intelligent people always know what they’re doing. So if they don’t go into a 30-minute lecture explaining to you why they did this or that, it’s probably because they don’t see the point — or don’t have the time.
                But then, intelligence is more than just about intellect. Intelligence is about trusting your emotions, too. Smart people learn how to trust their inner signals in combination with external information.
                Pseudo-smart people, on the other hand, will usually have a super-smart reason why they’re doing whatever it is what they’re doing. They’ll talk about markets, industries, news, latest research. They’ll try to convince you that the entire world is behind them on their decision. And then they’ll sit on their butts for 2 months.
                4. They don’t hijack conversations
                Instead, they listen more than they talk.
                Another hallmark of highly intelligent people is that they’re rarely the centerpiece of the conversation. You’ll rarely hear them dominate over someone— unless they have a reason to.
                Partly it’s because truly smart people realize how futile most conversations are. After years of trial and error, they come to find a truth that their words rarely lead to any tangible result. Instead, they focus on actions.
                Another reason is that they’re good listeners. Aggressively smart people are smart for a reason — they’ve had lots and lots of other aggressively smart people tell them things about life and business. To do that, they’ve learned to be good listeners.
                It’s also an ego thing. If you know you can beat someone in a discussion, why not just let them talk? What’s the point of proving what you already know and spend tons of energy in the process?
                Whenever you hear someone dominate a conversation — beware, you’re most likely dealing with a pseudo-intellectual.', 
                user: romain)
post1.photo.attach(io: URI.open('https://i.ytimg.com/vi/WjWldUTdUqc/maxresdefault.jpg'), filename: 'post.jpg', content_type: 'image/jpg')
post1.save!

post2 = Post.new(title: "Comment gérer une équipe d'incompétents", text: 'vraiment pas facile', user: marc)
post2.photo.attach(io: URI.open('https://d.newsweek.com/en/full/1871810/donald-trump-joe-biden-afghanistan-taliban.jpg'), filename: 'post.jpg', content_type: 'image/jpg')
post2.save!

#POST TAGS SEEDS
post1.tags << [tag1, tag2, tag3, tag4]
post1.save

post2.tags << [tag2, tag3, tag8, tag6]
post2.save








