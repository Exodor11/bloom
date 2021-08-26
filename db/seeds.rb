puts "Destroying previous stuff"

PostTag.destroy_all
UserTag.destroy_all
PostSaved.destroy_all
PostUpvoted.destroy_all
Contact.destroy_all
Post.destroy_all
Tag.destroy_all
User.destroy_all

puts "Old stuff destroyed successfully"
puts "Adding new stuff"

#TAG SEEDS
tag1 = Tag.create(name:"💰 business", category:"business")
tag2 = Tag.create(name:"📡 technology", category:"technology")
tag3 = Tag.create(name:"📈 finance", category:"finance")
tag4 = Tag.create(name:"🤹 entrepreneurship", category:"entrepreneurship")
tag5 = Tag.create(name:"🧬 sciences", category:"sciences")
tag6 = Tag.create(name:"🎭 psychology", category:"psychology")
tag7 = Tag.create(name:"👓 sociology", category:"sociology")
tag8 = Tag.create(name:"🧞‍♂️ philosophy", category:"philosophy")
tag9 = Tag.create(name:"⚖️ politics", category:"politics")
tag10 = Tag.create(name:"🥦 health", category:"health")


#USER SEEDS + AVATAR
#romain = User.new(email: "romain@guilde.com", first_name: 'Romain', last_name: 'Losey', bio: 'Busy building a life I do not need to escape from', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/romain-losey/' , password: '12345678', password_confirmation: '12345678')
#romain.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624455076/taxkkidiqfgsoecqktb3.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
#romain.save!

marc = User.new(email: "marc@guilde.com", first_name: 'Marc', last_name: "L'Eplattenier", bio_action_text: 'Busy building a life I do not need to escape from', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/mleplattenier/', password: '12345678', password_confirmation: '12345678')
marc.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624023909/wfliysfgym33qlzi0dsd.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
marc.save!

nico = User.new(email: "nico@guilde.com", first_name: 'Nicholas', last_name: 'Martin', bio_action_text: 'You miss 100% of the shots you don’t take', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nicholas-martin-777471203/', password: '12345678', password_confirmation: '12345678')
nico.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624437133/tppabzxei90i8j8joyps.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nico.save!

nathan = User.new(email: "nathan@guilde.com", first_name: 'Nathan', last_name: 'Cohen', bio_action_text: 'Exploring space with my amazing coding buddies', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
nathan.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624987859/tr4zygrx5akfawfoh4vj.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nathan.save!

titus = User.new(email: "titus@guilde.com", first_name: 'Titus', last_name: 'Palivan', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
titus.photo.attach(io: URI.open('https://www.trans-4-m.com/wp-content/uploads/2019/12/2019-10-28-TA-Course-St-Gallen-at-H4H-Titus.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
titus.save!

richard = User.new(email: "richard@guilde.com", first_name: 'Richard', last_name: 'Polastro', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
# richard.photo.attach(io: URI.open(''), filename: 'profile.jpg', content_type: 'image/jpg')
richard.save!

hadrien = User.new(email: "hadrien@guilde.com", first_name: 'Hadrien', last_name: 'Morand', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
hadrien.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618567875/yn4g2hwed2br6rk47c5f.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
hadrien.save!

colin = User.new(email: "colin@guilde.com", first_name: 'Colin', last_name: 'Schmidt', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
colin.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/84576983?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
colin.save!

martin = User.new(email: "martin@guilde.com", first_name: 'Martin', last_name: 'Masoni', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
martin.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624278691/wxhpylahlxlpcgvfvltf.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
martin.save!

oscar = User.new(email: "oscar@guilde.com", first_name: 'Oscar', last_name: 'Nicoulaz', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
oscar.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624525788/cku4rn3zcvcrr4ajpara.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
oscar.save!

pablo = User.new(email: "pablo@guilde.com", first_name: 'Pablo', last_name: 'Lopez', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
pablo.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/72790032?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
pablo.save!

alexandre = User.new(email: "alexandre@guilde.com", first_name: 'Alexandre', last_name: 'Stutz', bio_action_text: '', contact_action_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
alexandre.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/83030764?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
alexandre.save!

#USER_TAGS SEEDS
#romain.tags << [tag1, tag2]
#romain.save

marc.tags << [tag2, tag8]
marc.save

nico.tags << [tag4, tag9]
nico.save

nathan.tags << [tag2, tag4]
nathan.save

titus.tags << [tag8, tag9]
titus.save

richard.tags << [tag1, tag5]
richard.save

hadrien.tags << [tag8, tag10]
hadrien.save

colin.tags << [tag2, tag7]
colin.save

martin.tags << [tag2, tag4]
martin.save

oscar.tags << [tag2, tag5]
oscar.save

pablo.tags << [tag2, tag1]
pablo.save

alexandre.tags << [tag2, tag10]
alexandre.save



#USER_CONTACTS SEEDS
# FOLLOWER = FOLLOWED (=> User.followers = list of users who follow User)
# FOLLOWING = FOLLOWING (=> User.followings = list of users who are followed by User)
#contact1 = Contact.create(follower: romain, following: marc)
contact2 = Contact.create(follower: nathan, following: nico)
contact3 = Contact.create(follower: nico, following: nathan)
contact4 = Contact.create(follower: nathan, following: marc)

#POST SEEDS
business1 = Post.new(title: "Tim Cook’s decade at Apple makes him the most successful successor CEO ever",
		description: "Dedication, attention to detail and an instinct to do the opposite of what Steve Jobs might have done earn him that accolade",
		text_action_text: "THE TECHNOLOGY industry is littered with managers who have tried and failed to emulate successful founders. Think of <em>Steve Ballmer</em>, who succeeded Bill Gates at Microsoft, and Kevin Rollins, who took over from Michael Dell at Dell Technologies, who returned a few years later. Tim Cook heads the list of exceptions. Since he took the helm of Apple from Steve Jobs ten years ago, the firm’s market capitalisation has increased by more than $2trn. <strong>NO CHIEF EXECUTIVE</strong>&nbsp;in history has created as much total shareholder value. Mr Cook’s numbers beat the value generated by Jeff Bezos, who retired as Amazon’s chief executive in July, over his 24 years in charge. They also surpass the achievement of Warren Buffett, who has been running Berkshire Hathaway for nearly 45 years. During his second almost 14-year stint at Apple, Jobs added only $343.6bn to the firm’s market valuation, or $24.7bn a year.",
		user: nico)
business1.photo.attach(io: URI.open('https://www.mactrast.com/wp-content/uploads/2019/03/D2AE21F6-CE02-4E42-B5A2-5F49901F5FCA-800x457.jpeg'), filename: 'business1.jpg' , content_type: 'image/jpg')
business1.save!

philosophy1 = Post.new(title: "You are Not Lazy or Undisciplined. You Have Internal Resistance.",
		description: "Why you can’t just do it, and what to do instead",
		text_action_text: "",
		user: nico)
philosophy1.photo.attach(io: URI.open('https://i.imgflip.com/2qtvhx.jpg'), filename: 'philosophy1.jpg' , content_type: 'image/jpg')
philosophy1.save!

health1 = Post.new(title: "I cut my body fat percentage almost in half after starting a high-protein diet. Here’s what I eat.",
		description: "My body fat from 30% to 17% by eating a high-protein diet comprised of chicken, turkey, and Greek yogurt.",
		text_action_text: "",
		user: nico)
health1.photo.attach(io: URI.open('https://nexter.org/wp-content/uploads/2019/03/diet-weight-loss-memes-pic1.jpg'), filename: 'health1.jpg' , content_type: 'image/jpg')
health1.save!

tech1 = Post.new(title: "If software engineering is in demand, why is it so hard to get a software engineering job?",
		description: "The demanding environment isn't always attrative for some.",
		text_action_text: "",
		user: nico)
tech1.photo.attach(io: URI.open('https://www.probytes.net/wp-content/uploads/2018/01/3.jpg.jpg'), filename: 'tech1.jpg' , content_type: 'image/jpg')
tech1.save!

finance1 = Post.new(title: "What are the most important things to know about personal finance?",
		description: "In the ever-evolving environment of finance, things are getting more and more complicated",
		text_action_text: "",
		user: nico)
finance1.photo.attach(io: URI.open('https://i.imgur.com/itWHhbH.png'), filename: 'finance1.jpg' , content_type: 'image/jpg')
finance1.save!

philo2 = Post.new(title: "What is the most important question one has to ask oneself?",
		description: "Not always easy to find the answer",
		text_action_text: "",
		user: nico)
philo2.photo.attach(io: URI.open('https://s.yimg.com/ny/api/res/1.2/8BB7bb_.XU9F3S47PlwZEg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://media.zenfs.com/en-US/the_mighty_beauty_225/6db682d07916ca6e6c8073a1dd4033ba'), filename: 'philo2.jpg' , content_type: 'image/jpg')
philo2.save!

science1 = Post.new(title: "Measuring a black hole’s mass isn’t easy",
		description: "A new technique will change this though",
		text_action_text: "",
		user: nico)
science1.photo.attach(io: URI.open('https://static.boredpanda.com/blog/wp-content/uploads/2019/04/10-5caf31e692bae__700.jpg'), filename: 'science1.jpg' , content_type: 'image/jpg')
science1.save!

psycho1 = Post.new(title: "Which MBTI personality type is the most complex to understand?",
		description: "This isn't as easy as you might think",
		text_action_text: "",
		user: nico)
psycho1.photo.attach(io: URI.open('https://64.media.tumblr.com/75940d72a5faf1587e4af3aa3a471ae6/tumblr_pet6xuwlgx1v34reg_1280.jpg'), filename: 'psycho1.jpg' , content_type: 'image/jpg')
psycho1.save!

philo3 = Post.new(title: "The Most Important Ritual You Can Practice This Year",
		description: "Why did Marcus Aurelius spend those precious hours in his tent, writing by the lamplight, even on the nights and mornings he strained under the burdens of his war-time duties? It wasn’t for our benefit.",
		text_action_text: "",
		user: nico)
philo3.photo.attach(io: URI.open('https://i.chzbgr.com/full/9387061248/h2E90A2B9/funny-ok-boomer-meme-from-ancient-greece'), filename: 'philo3.jpg' , content_type: 'image/jpg')
philo3.save!

health2 = Post.new(title: "Training at the Gym, Training for Life: Creating Better Versions of the Self Through Exercise",
		description: "The present study draws on Scott’s (2011) notion of the Re-Inventive Institution and explores how gym members make sense and give meaning to their exercise regime",
		text_action_text: "",
		user: nico)
health2.photo.attach(io: URI.open('https://incredibleshrinkingbeardedman.files.wordpress.com/2019/07/34fd2387e6af2665b783af455966de2a.jpg'), filename: 'health2.jpg' , content_type: 'image/jpg')
health2.save!

entrepreneur1 = Post.new(title: "Why the Lean Start-Up Changes Everything",
		description: "Launching a new enterprise—whether it’s a tech start-up, a small business, or an initiative within a large corporation—has always been a hit-or-miss proposition.",
		text_action_text: "",
		user: nico)
entrepreneur1.photo.attach(io: URI.open('https://iq.opengenus.org/content/images/2019/12/tesla_1.png'), filename: 'entrepreneur.jpg' , content_type: 'image/jpg')
entrepreneur1.save!

socio1 = Post.new(title: "How will society keep human labor relevant in an era of increasing automation?",
		description: "AI is changing the game",
		text_action_text: "",
		user: nico)
socio1.photo.attach(io: URI.open('https://media-exp1.licdn.com/dms/image/C4E12AQE0TAMpLO1L4A/article-inline_image-shrink_1000_1488/0/1524167545936?e=1632960000&v=beta&t=YZdHeYEUeLokx1yEUi10vbFsUnt0qgFnvSNUwzZ05cE'), filename: 'socio1.jpg' , content_type: 'image/jpg')
socio1.save!

business2 = Post.new(title: "The Best Business Blogs Every Entrepreneur Should Be Reading",
		description: "On the internet, an endless source of industry insights, news and tips are at your fingertips - but how do you know which are worth reading? Here are the top business blogs every entrepreneur should stay on top of.",
		text_action_text: "",
		user: nico)
business2.photo.attach(io: URI.open('https://miro.medium.com/max/1000/1*qVGmZn-3Npku-1qdU4-KHg.jpeg'), filename: 'business2.jpg' , content_type: 'image/jpg')
business2.save!




#POST TAGS SEEDS
business1.tags << [tag1]
business1.save

philosophy1.tags << [tag8]
philosophy1.save

health1.tags << [tag10]
health1.save

tech1.tags << [tag2]
tech1.save

finance1.tags << [tag3]
finance1.save

philo2.tags << [tag8]
philo2.save

science1.tags << [tag5]
science1.save

psycho1.tags << [tag6]
psycho1.save

philo3.tags << [tag8, tag6]
philo3.save

health2.tags << [tag10]
health2.save

entrepreneur1.tags << [tag4]
entrepreneur1.save

socio1.tags << [tag7]
socio1.save

business2.tags << [tag1, tag4]
business2.save

puts "New stuff added successfully"
