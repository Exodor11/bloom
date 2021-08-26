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


marc = User.new(email: "marc@guilde.com", first_name: 'Marc', last_name: "L'Eplattenier", 
			bio_action_text: '<div>🌎 Busy building a life I do not need to escape from<br>💪🏻 Full-time nerd &amp; Business Student<br>🎙️: Podcast Co-Host</div>', 
			contact_action_text: 'I am an introvert so please reach out to me on <a href="https://www.linkedin.com/in/mleplattenier/">LinkedIn</a> 🤓',
			status_action_text: 'Status: Coming back to St. Gallen soon, let us go mastermind together 🤓', 
			password: '12345678', password_confirmation: '12345678')
marc.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624023909/wfliysfgym33qlzi0dsd.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
marc.save!

nico = User.new(email: "nico@guilde.com", first_name: 'Nicholas', last_name: 'Martin',
  bio_action_text: '🤓 You miss 💯% of the shots you don’t take<br>👨‍🎓Future MBA Student in Geneva Switzerland 🇨🇭',
  contact_action_text: 'Please reach out to me on <a href="https://www.linkedin.com/in/nicholas-martin-777471203/">LinkedIn</a> <br>',
  status_action_text: 'Learning to code!',
  password: '12345678', password_confirmation: '12345678')
nico.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624437133/tppabzxei90i8j8joyps.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nico.save!

nathan = User.new(email: "nathan@guilde.com", first_name: 'Nathan', last_name: 'Cohen',
  bio_action_text: '🚀 Exploring space with my amazing coding buddies <br>👨‍🎓 HSG Business Student <br> 👨🏻‍💼 Working on My Start-up <br>',
  contact_action_text: 'Please reach out to me on <a href="https://www.linkedin.com/in/nathan-cohen-b7aa651a1/">LinkedIn</a> <br>',
  status_action_text: 'Open for new design opportunities!',
  password: '12345678', password_confirmation: '12345678')
nathan.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624987859/tr4zygrx5akfawfoh4vj.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nathan.save!

titus = User.new(email: "titus@guilde.com", first_name: 'Titus', last_name: 'Palivan',
  bio_action_text: '🏝️ Mindset: Buying my own private island for all the lovely ladies who want to hang out 😉 <br>🚀 I love space too, always happy to talk about it <br>👨‍🎓 HSG Alumni ',
  contact_action_text: 'Stalk me on <a href="https://www.linkedin.com/in/tituspalivan/">LinkedIn</a> <br>',
  password: '12345678', password_confirmation: '12345678')
titus.photo.attach(io: URI.open('https://www.trans-4-m.com/wp-content/uploads/2019/12/2019-10-28-TA-Course-St-Gallen-at-H4H-Titus.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
titus.save!

richard = User.new(email: "richard@guilde.com", first_name: 'Richard', last_name: 'Polastro',
  bio_action_text: '📜 Getting my Masters Degree from HSG <br> 😎Living life one day at a time',
  contact_action_text: 'Please reach out to me on <a href="https://www.linkedin.com/in/richar-polastro-b7hd551a1/">LinkedIn</a> <br>',
  password: '12345678', password_confirmation: '12345678')
# richard.photo.attach(io: URI.open(''), filename: 'profile.jpg', content_type: 'image/jpg')
richard.save!

colin = User.new(email: "colin@guilde.com", first_name: 'Colin', last_name: 'Schmidt',
  bio_action_text: '💭 MY dream is to become a freelance coder <br>💻 Interested in everything tech',
  contact_action_text: 'Check out my projects on <a href="https://github.com/Colin-Schm">GitHub</a> <br>',
  password: '12345678', password_confirmation: '12345678')
colin.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/84576983?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
colin.save!

martin = User.new(email: "martin@guilde.com", first_name: 'Martin', last_name: 'Masoni',
  bio_action_text: '💻 Working in tech and honing my skills <br>🇨🇭 working in Switzerland',
  contact_action_text: 'Check me out on <a href="https://github.com/martzoni">GitHub</a> <br>',
  password: '12345678', password_confirmation: '12345678')
martin.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624278691/wxhpylahlxlpcgvfvltf.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
martin.save!

oscar = User.new(email: "oscar@guilde.com", first_name: 'Oscar', last_name: 'Nicoulaz',
                  bio_action_text: '🎶 Passionate about Techno Music <br>👨‍💻 Ex-Civil Engineer and Future Dev <br>☀️ Living in Vevey<br>',
                  contact_action_text: 'Check me out on <a href="https://www.instagram.com/oscarnicoulaz/">Instagram</a>',
                  password: '12345678', password_confirmation: '12345678')
oscar.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624525788/cku4rn3zcvcrr4ajpara.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
oscar.save!

pablo = User.new(email: "pablo@guilde.com", first_name: 'Pablo', last_name: 'Lopez',
                  bio_action_text: '🇦🇷 Proud Argentinian living in Switzerland <br>💰 Working in Finance <br>🇸🇬 Off to Singapore soon<br>',
                  contact_action_text: 'Please reach out to me on <a href="https://www.linkedin.com/in/pablo-roleri-lopez-a79a66a7/">LinkedIn</a> <br>',
                  password: '12345678', password_confirmation: '12345678')
pablo.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/72790032?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
pablo.save!

alexandre = User.new(email: "alexandre@guilde.com", first_name: 'Alexandre', last_name: 'Stutz',
                  bio_action_text: '💪🏼 Passionate about Powerlifting <br>🖥 Future full-time Dev <br>😎 Always eager to connect<br>',
                  contact_action_text: 'Please reach out to me on <a href="https://www.facebook.com/alexandre.stutz.1">Facebook</a>',
                  password: '12345678', password_confirmation: '12345678')
alexandre.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/83030764?v=4'), filename: 'profile.jpg', content_type: 'image/jpg')
alexandre.save!

hadrien = User.new(email: "hadrien@guilde.com", first_name: 'Hadrien', last_name: 'Morand',
                  bio_action_text: '👨‍🍳 EHL Alumni <br>🥃 Morand Family Business <br>📈 Passionate about Data Science & Coding<br>',
                  contact_action_text: 'Please reach out to me on <a href="https://www.linkedin.com/in/hadrien-morand-b913b391/">LinkedIn</a> <br>',
                  password: '12345678', password_confirmation: '12345678')
hadrien.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618567875/yn4g2hwed2br6rk47c5f.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
hadrien.save!

romain = User.new(email: "romain@guilde.com", first_name: 'Romain', last_name: 'Losey',
									bio_action_text: '📚 Part-time HSG student<br>🥩 Part-time cryogenic butcher<br>👨‍💻 Full-time nerd<br>',
									status_action_text: '',
									contact_action_text: 'I am bullish on <a href="https://www.linkedin.com/in/romain-losey/">LinkedIn</a><br>📨 Shoot me a DM&nbsp;<br>Looking forward to connect !' ,
									password: '12345678', password_confirmation: '12345678')
romain.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624455076/taxkkidiqfgsoecqktb3.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
romain.save!


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

#USER_TAGS SEEDS
romain.tags << [tag1, tag2, tag10]
romain.save


#USER_CONTACTS SEEDS
# FOLLOWER = FOLLOWED (=> User.followers = list of users who follow User)
# FOLLOWING = FOLLOWING (=> User.followings = list of users who are followed by User)
#contact1 = Contact.create(follower: romain, following: marc)


# Romain CONTACTS
Contact.create(follower: titus, following: romain)
Contact.create(follower: marc, following: romain)
Contact.create(follower: nico, following: romain)
Contact.create(follower: hadrien, following: romain)

Contact.create(follower: romain, following: marc)
Contact.create(follower: romain, following: nico)
Contact.create(follower: romain, following: hadrien)
Contact.create(follower: romain, following: titus)


# NATHAN CONTACTS
Contact.create(follower: titus, following: nathan)
Contact.create(follower: marc, following: nathan)
Contact.create(follower: nico, following: nathan)
Contact.create(follower: hadrien, following: nathan)

Contact.create(follower: nathan, following: marc)
Contact.create(follower: nathan, following: nico)
Contact.create(follower: nathan, following: hadrien)
Contact.create(follower: nathan, following: titus)

# MARC CONTACTS
Contact.create(follower: titus, following: marc)
Contact.create(follower: colin, following: marc)
Contact.create(follower: nico, following: marc)
Contact.create(follower: hadrien, following: marc)

Contact.create(follower: marc, following: nathan)
Contact.create(follower: marc, following: nico)
Contact.create(follower: marc, following: hadrien)
Contact.create(follower: marc, following: titus)

#NICO CONTACTS
Contact.create(follower: titus, following: nico)
Contact.create(follower: colin, following: nico)
Contact.create(follower: marc, following: nico)
Contact.create(follower: hadrien, following: nico)

Contact.create(follower: nico, following: nathan)
Contact.create(follower: nico, following: marc)
Contact.create(follower: nico, following: hadrien)
Contact.create(follower: nico, following: titus)


#POST SEEDS
business1 = Post.new(title: "Tim Cook’s decade at Apple makes him the most successful successor CEO ever",
		description: "Dedication, attention to detail and an instinct to do the opposite of what Steve Jobs might have done earn him that accolade",
		text_action_text: "THE TECHNOLOGY industry is littered with managers who have tried and failed to emulate successful founders. Think of <em>Steve Ballmer</em>, who succeeded Bill Gates at Microsoft, and Kevin Rollins, who took over from Michael Dell at Dell Technologies, who returned a few years later. Tim Cook heads the list of exceptions. Since he took the helm of Apple from Steve Jobs ten years ago, the firm’s market capitalisation has increased by more than $2trn. <strong>NO CHIEF EXECUTIVE</strong>&nbsp;in history has created as much total shareholder value. Mr Cook’s numbers beat the value generated by Jeff Bezos, who retired as Amazon’s chief executive in July, over his 24 years in charge. They also surpass the achievement of Warren Buffett, who has been running Berkshire Hathaway for nearly 45 years. During his second almost 14-year stint at Apple, Jobs added only $343.6bn to the firm’s market valuation, or $24.7bn a year.",
		user: marc)
business1.photo.attach(io: URI.open('https://www.mactrast.com/wp-content/uploads/2019/03/D2AE21F6-CE02-4E42-B5A2-5F49901F5FCA-800x457.jpeg'), filename: 'business1.jpg' , content_type: 'image/jpg')
business1.save!

philosophy1 = Post.new(title: "You are Not Lazy or Undisciplined. You Have Internal Resistance.",
		description: "Why you can’t just do it, and what to do instead",
		text_action_text: "When I was writing my PhD I didn’t have bad weeks. I had bad months. The kind when each day you wake up thinking, “Today I will actually do the thing” and then you… don’t. Somehow the day ticks by and then it’s 11 pm and you still haven’t done the thing and it feels like you might as well go to bed and start over tomorrow, but already you have a sinking horrible sense that you won’t do it then either. And lo, the cycle repeats.",
		user: titus)
philosophy1.photo.attach(io: URI.open('https://i.imgflip.com/2qtvhx.jpg'), filename: 'philosophy1.jpg' , content_type: 'image/jpg')
philosophy1.save!

health1 = Post.new(title: "I cut my body fat percentage almost in half after starting a high-protein diet. Here’s what I eat.",
		description: "My body fat from 30% to 17% by eating a high-protein diet comprised of chicken, turkey, and Greek yogurt.",
		text_action_text: "One of the secrets to successful weight loss is to kick-start our metabolism as soon as possible after we wake. The best way to do that is to eat breakfast. In fact, nothing, including <a>exercise</a>, gets our metabolism going as fast again after eight hours of restful sleep as eating a healthy breakfast!<br><br>When we skip breakfast, not only does our metabolic rate stay low, so too does our blood sugar levels. Low blood sugar levels resulting from missing breakfast often leads us to feel lethargic.<br><br>Low blood sugar levels in the morning eventually make us feel extra hungry later, which sets us up for impulse snacking, or eating overly large portions of food at lunch and dinner.<br><br>When we eat breakfast, our body feels nourished and satisfied, making us far less likely to over eat during the rest of the day.",
		user: alexandre)
health1.photo.attach(io: URI.open('https://nexter.org/wp-content/uploads/2019/03/diet-weight-loss-memes-pic1.jpg'), filename: 'health1.jpg' , content_type: 'image/jpg')
health1.save!

tech1 = Post.new(title: "If software engineering is in demand, why is it so hard to get a software engineering job?",
		description: "The demanding environment isn't always attrative for some.",
		text_action_text: "There are lots of “opening strategies” you may follow. Maybe a company’s HR reaches out to you first on LinkedIn; maybe you choose to trust a third party recruiter. Your mileage may vary with third party recruiters (also referred to as “head hunters”), but to put it bluntly, there is a reason they have such a bad reputation. Some of them are really, really bad. The bad ones will try to set you up with a company that is not a good fit, they will “shotgun blast” requests to anyone and everyone, and they will not have your best interest in mind. What they want from the arrangement is money.<br>…Though, to be fair, that is probably also what you want.<br>Maybe you decide to reach out to a friend instead. Maybe you reach out to HR departments directly, or you decide to do what a zillion other people are doing and just try to indeed-easy-apply your way to success.There are a <em>lot</em> of tech companies trying to make it right now, and some of them are pretty random. One company was delivering medical supplies via tiny drones. One company was trying to disrupt healthcare by making customers pay hundreds of dollars every month to see more doctors. The weirdest company I have ever interacted with was building a dating app…as if people would <em>pay</em> for an app where you swiped right to determine potential matches.",
		user: colin)
tech1.photo.attach(io: URI.open('https://i.pinimg.com/736x/4b/b2/20/4bb220922895dd28412188de0ce6abb4.jpg'), filename: 'tech1.jpg' , content_type: 'image/jpg')
tech1.save!

finance1 = Post.new(title: "What are the most important things to know about personal finance?",
		description: "In the ever-evolving environment of finance, things are getting more and more complicated",
		text_action_text: "Strive towards assets based living from income based living.<br>Let me explain this a bit more.When you first graduate from a school/college and get your first job, you are essentially living off your income. The monthly pay checks you get will help you pay your bills and past debts.<br>&nbsp;Now is the choice you need to make, should I continue to live off my income and hope that income rise would continue well beyond mid to later years of my career to continue enhance my quality of life, or should I try to accumulate assets which will pay off my future ambitions whether my job meets my financial expectations or not. In today’s uncertain times, it has become ever more important to have more than decent savings which can help you maintain same quality of life, help you reduce your debts and also be certain about your and your family’s future, like saving for your children’s education. You can achieve this is by accumulating assets right at the start. However first thing is to correctly identify what is an asset. Asset is something tangible or otherwise which will cause net cash flow to you in future. So a fancy car, watch, phone etc are really not assets. Also when accumulating assets, you should keep in mind to not accumulate something which is speculative in nature and only way you can get some cashflow is by selling the same.",
		user: hadrien)
finance1.photo.attach(io: URI.open('https://i.imgur.com/itWHhbH.png'), filename: 'finance1.jpg' , content_type: 'image/jpg')
finance1.save!

philo2 = Post.new(title: "What is the most important question one has to ask oneself?",
		description: "Not always easy to find the answer",
		text_action_text: "The most interesting question someone ever had me pose myself was my therapist in New Zealand when I went through a rough patch and was very unhappy.<br>&nbsp;It was a seemingly childish question, but boy, the power it unleashes! Here it is:<br>&nbsp;<em>“If you were so rich that you didn’t need to work anymore, what would you do?”</em><br> It hit me like a ton of bricks that basically my entire life and almost all the choices I made were compromises in order to survive financially, and when we’re honest, it’s true for most of us. Where we live, how we live, what we do, what we drive, where we travel, what we eat, how we decorate our homes, what we do for fun… it’s endless, the distortions and ripples financially motivated choices put into our existence.<br> Answering this question truthfully, at length, and in detail, is not easy at all, but it will eventually reveal your true self, and give you a different vision of what it is that you truly want in life. In case anyone wonders how I answered it for myself, I said I’d want to be a local writer who drinks too much, and lives in western Argentina. I would live in some shabby chic old character villa surrounded by vineyards, with a dusty road leading up to it. The place would be crawling with cats, and I’d be driving an old Dodge 3700 GT. Midnight blue.<br>Yes, I would still write, even if I weren’t paid for it. I do now, too, as you may have noticed.",
		user: titus)
philo2.photo.attach(io: URI.open('https://s.yimg.com/ny/api/res/1.2/8BB7bb_.XU9F3S47PlwZEg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://media.zenfs.com/en-US/the_mighty_beauty_225/6db682d07916ca6e6c8073a1dd4033ba'), filename: 'philo2.jpg' , content_type: 'image/jpg')
philo2.save!

science1 = Post.new(title: "Measuring a black hole’s mass isn’t easy",
		description: "A new technique will change this though",
		text_action_text: "An actively feeding black hole surrounds itself with a disk of hot gas and dust that flickers like a campfire. Astronomers have now found that monitoring changes in those flickers can reveal something that is notoriously hard to measure: the behemoth’s heft.<br>“It’s a new way to weigh black holes,” says astronomer Colin Burke of the University of Illinois at Urbana-Champaign. What’s more, the method could be used on <a>any astrophysical object with an accretion disk</a>, and may even help find elusive midsize black holes, researchers report in the Aug. 13 <em>Science</em>.<br>It’s not easy to measure a black hole’s mass. For one thing, the dark behemoths are notoriously difficult to see. But sometimes black holes reveal themselves when they eat. As gas and dust falls into a black hole, the material organizes into a disk that is heated to white-hot temperatures and can, in some cases, outshine all the stars in the galaxy combined.<br>Measuring the black hole’s diameter can reveal its mass using Einstein’s general theory of relativity. But only the globe-spanning Event Horizon Telescope has made this sort of measurement, and <a>for only one black hole</a> so far (<em>SN: 4/22/19</em>). Other black holes have been weighed via observations of their influence on the material around them, but that takes a lot of data and doesn’t work for every supermassive black hole.So, looking for another way, Burke and colleagues turned to accretion disks. Astronomers aren’t sure how black holes’ disks flicker, but it seems like small changes in light combine to brighten or dim the entire disk over a given span of time. Previous research had hinted that the time it takes a disk to fade, brighten and fade again is related to the mass of its central black hole. But those claims were controversial, and didn’t cover the full range of black hole masses, Burke says.<br>So he and colleagues assembled observations of 67 actively feeding black holes with known masses. The behemoths spanned sizes from 10,000 to 10 billion solar masses. For the smallest of these black holes, the flickers changed on timescales of hours to weeks. Supermassive black holes with masses between 100 million and 10 billion solar masses flickered more slowly, every few hundred days.<br>“That gives us a hint that, okay, if this relation holds for small supermassive black holes and big ones, maybe it’s sort of a universal feature,” Burke says.",
		user: richard)
science1.photo.attach(io: URI.open('https://static.boredpanda.com/blog/wp-content/uploads/2019/04/10-5caf31e692bae__700.jpg'), filename: 'science1.jpg' , content_type: 'image/jpg')
science1.save!

psycho1 = Post.new(title: "Which MBTI personality type is the most complex to understand?",
		description: "This isn't as easy as you might think",
		text_action_text: "So I want to make sure I don’t misunderstand the question. I see two primary ways to interpret this question and I’ll address each separately. If this is what it means to be misunderstood, then take your pick of the INxx’s. All 4 of these types, on average, go through long, intense periods of their early lives feeling completely misunderstood, lonely, and ostracized.<br>&nbsp;Out of all four INxx types, INTPs probably have the most difficult time getting over this, as they’re the least social of all 16 types, Fe-inferiors, etc. The biggest enemy of INTPs is stagnation. The whole cliche of the nerd that sits in a basement playing video games all day is born out of an actual psychology of stagnant, socially anxious INTPs that find nothing in the world really worth their efforts. I’ve personally been there. That type of person suffers from a lot of judgment from themselves and others, and naturally will go long stretches of time feeling misunderstood because they’re doing nothing to connect with people in the first place.<br>&nbsp;The most intense feelings of feeling misunderstood probably are experienced by INFPs, as they often harbor deep fears surrounding their identity and authenticity. The great journey for INFPs is coming out and expressing themselves fully no matter how big of weirdos others wind up thinking they are. INFPs that don’t wind up hiding and feeling extremely misunderstood as they repress their identity out of fear.<br>2. Misunderstood means “other people have trouble following their thinking processes.”<br>&nbsp;INxJs here, probably especially INFJs. Ni (introverted intuition) is the primary brain function that these types use, and it can be hard to follow. Ni makes unconscious leaps in its thought patterns. The way Ni basically works is that it (unconsciously) observes a repeated sequence of thoughts",
		user: oscar)
psycho1.photo.attach(io: URI.open('https://64.media.tumblr.com/75940d72a5faf1587e4af3aa3a471ae6/tumblr_pet6xuwlgx1v34reg_1280.jpg'), filename: 'psycho1.jpg' , content_type: 'image/jpg')
psycho1.save!

philo3 = Post.new(title: "The Most Important Ritual You Can Practice This Year",
		description: "Why did Marcus Aurelius spend those precious hours in his tent, writing by the lamplight, even on the nights and mornings he strained under the burdens of his war-time duties? It wasn’t for our benefit.",
		text_action_text: "Why did <a>Marcus Aurelius</a> spend those precious hours in his tent, writing by the lamplight, even on the nights and mornings he strained under the burdens of his war-time duties? It wasn’t for our benefit. No, he never expected <a><em>Meditations</em></a> would see an audience. He was writing for himself, <em>to</em> himself, as a way to practice the principles of the philosophy we are still following today. He was journaling as a means of self-improvement as much as he was of self-expression.<br><a>As Tim Ferriss has said of his daily journaling habit</a>, “I don’t journal to ‘be productive.’ I don’t do it to find great ideas, or to put down prose I can later publish. The pages aren’t intended for anyone but me…I’m trying to figure things out…I’m just caging my monkey mind on paper so I can get on with my fucking day.”",
		user: pablo)
philo3.photo.attach(io: URI.open('https://i.chzbgr.com/full/9387061248/h2E90A2B9/funny-ok-boomer-meme-from-ancient-greece'), filename: 'philo3.jpg' , content_type: 'image/jpg')
philo3.save!

health2 = Post.new(title: "Training at the Gym, Training for Life: Creating Better Versions of the Self Through Exercise",
		description: "The present study draws on Scott’s (2011) notion of the Re-Inventive Institution and explores how gym members make sense and give meaning to their exercise regime",
		text_action_text: "Whether in the basement of a commercial complex, half-hidden between two corner stores, next to the tube station or on a wide green field in the suburbs, gyms have conquered urban space. Every European and North American city, and even small towns, seem to have a fitness gym. Gyms are one of the most pursued leisure places in Western societies and can be said to have established themselves as part of a white, middle-class culture.<br>&nbsp;In the UK, for example, almost 13% of the UK population is registered as members of a private health and fitness gym or a publicly-owned fitness facility, with London having the most registered users<br>Fitness gyms vary in location, membership fees and serve different social and economic milieus. Most urban gyms are located in the city centre and are at their busiest during lunch time and after work hours. In order to attract customers, most gyms offer more than a plain and functional working out environment but present themselves as lifestyle or family oriented places. Depending on the size and the target group, multi-purpose amenities encourage pre- or post-training activities, for example at their spas and beauty centres or they organize social activities at the weekend.<br>&nbsp;As notes, “hybrid consumption”, that is, consumption of several goods and services within one single place, tends to extend the time spent by the customers there. Consequently, one may think that the more time gym users spend at their gym, the more they engage with its material and social environment, and the more they are affected by the same so that the gym becomes more than just a training site for them.",
		user: romain)
health2.photo.attach(io: URI.open('https://incredibleshrinkingbeardedman.files.wordpress.com/2019/07/34fd2387e6af2665b783af455966de2a.jpg'), filename: 'health2.jpg' , content_type: 'image/jpg')
health2.save!

entrepreneur1 = Post.new(title: "Why the Lean Start-Up Changes Everything",
		description: "Launching a new enterprise—whether it’s a tech start-up, a small business, or an initiative within a large corporation—has always been a hit-or-miss proposition.",
		text_action_text: "Launching a new enterprise—whether it’s a tech start-up, a small business, or an initiative within a large corporation—has always been a hit-or-miss proposition. According to the decades-old formula, you write a business plan, pitch it to investors, assemble a team, introduce a product, and start selling as hard as you can. And somewhere in this sequence of events, you’ll probably suffer a fatal setback. The odds are not with you: As new research by Harvard Business School’s Shikhar Ghosh shows, 75% of all start-ups fail.<br>But recently an important countervailing force has emerged, one that can make the process of starting a company less risky. It’s a methodology called the “lean start-up,” and it favors experimentation over elaborate planning, customer feedback over intuition, and iterative design over traditional “big design up front” development. Although the methodology is just a few years old, its concepts—such as “minimum viable product” and “pivoting”—have quickly taken root in the start-up world, and business schools have already begun adapting their curricula to teach them.",
		user: nathan)
entrepreneur1.photo.attach(io: URI.open('https://iq.opengenus.org/content/images/2019/12/tesla_1.png'), filename: 'entrepreneur.jpg' , content_type: 'image/jpg')
entrepreneur1.save!

socio1 = Post.new(title: "How will society keep human labor relevant in an era of increasing automation?",
		description: "AI is changing the game",
		text_action_text: "People have been asking this question since the beginning of the industrial revolution.<br>&nbsp;In the early 1800's the Luddites were protesting against mechanisation of the textile industry in England. Textiles were an important part of the UK economy and a major employer, so if even half of these jobs were lost there would be serious problems of unemployment and underemployment. The Luddites could not comprehend that the labour thus freed up would then be available to newly emerging industries, many of which didn't exist yet. A generation later, Britain was building the world's first railway network and ushering in a new age of transportation.<br>&nbsp;This is what progress looks like. You start from a position where fulfilling basic needs is labour intensive and you figure out how to meet those needs with less effort, following which labour and capital can move into new arenas. In a primitive economy nearly 100% of the population will be occupied producing food. After they mechanise agriculture, labour moves into manufacturing. When a small proportion of the workforce can produce all the cars and TVs you need, opportunities arise in service provision. As services become automated new services are invented. Two centuries of intensive automation and mechanisation has not led to high unemployment in developed countries.<br>People will always want other people to do things for them. As basic needs are met more and more easily, new ways of encouraging people to part with their money will be devised. Instead of ploughing fields, today's resources are increasingly devoted to areas such as healthcare.Where unemployment is high it is not because of automation, it is because of a failure of the financial system to provide capital to where it can be used to good effect. And ultimately capitalists don't like workers to be idle, because the unemployed don't consume as many of their products.<br>&nbsp;Of course, capitalism is not the only game in town. Marx had plenty of ideas about what automation meant and his view was that it would lead to super-abundance, a world in which capitalism became unnecessary. If you accept his analysis then automation is unequivocally good, as it leads more quickly to a situation where all of our needs are met and we can continue to the logical end-point of our societal development.<br>&nbsp;Either way, automation is not a threat to us. Either it lets us discover new industries and opportunities or it brings forward a time when we can retire in a communist utopia. What it won't do is lead to a situation where a few capitalists own all the machines and everyone else has nothing, because that is not a sustainable outcome.",
		user: martin)
socio1.photo.attach(io: URI.open('https://media-exp1.licdn.com/dms/image/C4E12AQE0TAMpLO1L4A/article-inline_image-shrink_1000_1488/0/1524167545936?e=1632960000&v=beta&t=YZdHeYEUeLokx1yEUi10vbFsUnt0qgFnvSNUwzZ05cE'), filename: 'socio1.jpg' , content_type: 'image/jpg')
socio1.save!

business2 = Post.new(title: "The Best Business Blogs Every Entrepreneur Should Be Reading",
		description: "On the internet, an endless source of industry insights, news and tips are at your fingertips - but how do you know which are worth reading? Here are the top business blogs every entrepreneur should stay on top of.",
		text_action_text: "1. <a>Mashable Business</a> is a one-stop shop for any online entrepreneur. We check it every morning to get our daily dose of what's trending in the digital world. Just try not to let yourself get distracted by all the fun 'watercooler' type pieces in the sidebar - stick to the business portion of the blog.2. <a>Fast Company</a><br>Not only is <a>Fast Company</a>'s blog incredibly visually appealing, it's also mentally appealing. Its creative, compelling articles and case studies are wonderful ways to learn about entrepreneurship, design, technology trends, industry influencers, and so much more.3. <a>Forbes: Entrepreneurs</a><br>Forbes describes itself as 'a leading source for reliable business news and financial information' and Forbes' Entrepreneurs section is a leading source for reliable business news and financial information for – you guessed it – entrepreneurs and small business owners. Once you get past the annoying pop-up screens, their blog has some top-quality content.",
		user: nathan)
business2.photo.attach(io: URI.open('https://miro.medium.com/max/1000/1*qVGmZn-3Npku-1qdU4-KHg.jpeg'), filename: 'business2.jpg' , content_type: 'image/jpg')
business2.save!

business3 = Post.new(title: "10 Business Articles Every Entrepreneur Should Read",
    description: "Just sharing my personal reading list on entrepreneurship, enjoy!",
    text_action_text: "1. Mark Cuban Says These are The Dumbest Things Entrepreneurs Do, Entrepreneur<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Most likely, you've watched Mark Cuban on Shark Tank, or know of his various business ventures. Therefore, it's clear that he knows a thing or two about running a businesses. In this article, Cuban implores new entrepreneurs not to fall into three, easy-to-miss traps.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>2. How Do Small Business Loans Work? The Fora Financial Blog<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; If you're interested in pursuing additional financing for you business, it's crucial to understand how the small business loan process works. In this comprehensive guide, we explain how to apply, qualify for, and repay a business loan. By doing this correctly, you can receive the financing that your business requires!&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>3. What Makes a Leader? Harvard Business<br>&nbsp;Review<br>456789<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Business owners have to wear many hats, and most importantly, they have to be strong leaders. In this article, Harvard Business Review discusses what a leader looks like, and how you can improve your leadership skills.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>4. Why You Hate Work, New York Times<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Just 13 percent of workers worldwide report feeling fulfilled at work, so it's no wonder so many people hate their jobs. As a business owner, you need to cultivate an environment that gives employees what they need to be fulfilled — this article provides a roadmap.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>&nbsp;5. 50 Signs You Might Be an Entrepreneur<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Are you struggling to find a career that you're passionate about? Or, maybe you don't enjoy working for yourself and would rather work independently. If so, you might be the type of person that would excel as an entrepreneur. Check out the 50 signs that reveal your entrepreneurial tendencies.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>6. How to Become a Millionaire by 30<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Entrepreneurship isn't just about making money; one of the most notable reasons is that many people want to work for themselves. In this article, Grant Cardone reveals his ten steps on his path to becoming a millionaire.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br><br>7. Why Google Doesn't Care About College Degrees<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Look no further than Google for validation that you don't need a college degree to start a business. This article reviews five reasons executives at Google don't care about college degrees in their hiring process.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>8. 7 Rejections<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Airbnb's CEO Brian Chesky received five rejection letters from potential investors and was ignored by the other two he wrote to. This article reviews the seven rejections Chesky received as he sought funding for his company that changed the travel industry.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br><br>9. My Advice to First-Time Entrepreneurs<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In his <a href='http://medium.com/'>Medium.com</a> article, Gary Vaynerchuk highlights his top three pieces of advice for first-time entrepreneurs.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br> 10. The Best Startup Advice You'll Ever Receive<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This article packs a punch, delivering the best startup advice from some of the country's best founders.'",
    user: marc)
business3.photo.attach(io: URI.open('https://miro.medium.com/max/400/1*iFOeoAhVD2Wojgk9P66vUg.jpeg'), filename: 'business3.jpg' , content_type: 'image/jpg')
business3.save!

psycho2 = Post.new(title: "How Minecraft is helping children with autism make new friends",
    description: "Playing video games online can be antisocial – but the Autcraft community is helping children with autism learn social skills and build relationships",
    text_action_text: "LIKE many constructions, it started small. But now thousands of children with autism are making friends and learning social skills by playing a version of online building game Minecraft.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Stuart Duncan got the idea through a popular blog he ran about his own experiences with autism as well as bringing up a son with autism. Other parents with autistic children started telling him that their kids were crazy about a game that let them explore a randomly generated wilderness. However, despite loving the game, many of the children were being bullied by other players.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; So, in 2013, Duncan, a web developer in Timmins, Canada, set up a server to run a version of Minecraft exclusively for children with autism and their families. He thought the invite-only server would attract 10 or 20 people. To his surprise, hundreds requested to join in the first few days.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Now, almost three years later, running 'Autcraft' is his full-time job. The community boasts nearly 7000 members, along with a team of admins to help manage its many activities. 'Parents see such a benefit for themselves and their children,' says Duncan.",
    user: nico)
psycho2.photo.attach(io: URI.open('https://cdn.minecraft-resourcepacks.com/wp-content/uploads/2021/01/minecraft-meme-2.jpg'), filename: 'psycho2.jpg' , content_type: 'image/jpg')
psycho2.save!

socio2 = Post.new(title: "The Magic Of Gamification with Real-Life Examples",
    description: "Engagement is essentially the thing that makes the world go round. Do you know some great gamification examples?",
    text_action_text: "We do. And we want to share them with you. When you take kids to school you want them to be engaged in their studies, otherwise, they will get bored, learn nothing, start misbehaving.<br><br>&nbsp;What about the time when you go to work? You want your employers to be engaged with their tasks: dozens of studies have shown that people work better when they are engaged.<br><br>&nbsp;Let's imagine you come up with a new product, a new app, a new anything, you want people to enjoy using it more than anything else, right?<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Even if the app is about something as dull as keeping finances together.<br><br>&nbsp;In fact, let's stop here for a second. Some apps are naturally engaging: it's fun to take pictures, chat on Facebook (well, mostly fun), play Candy Crush, or choose a nail polish.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; It's not as much fun organizing your work, finances, trying to lead a healthier or more eco-friendly lifestyle, and so on.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; And that's when gamification comes in. Let's cover the basics of gamification, and dive into gamification in real-life with some examples.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; What Is Gamification? Gamification is a rather new concept in a grand scheme of things. New products get developed every day and brand loyalty is at its worst. It's not enough that your product does what it is supposed to well.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; It has to make a user enjoy the process, maybe even become addicted to the product, in a way.",
    user: nico)
socio2.photo.attach(io: URI.open('http://blog.emakina.com/wp-content/uploads/2011/10/tumblr_lp9s9uLH1l1qhr7tw.jpeg'), filename: 'socio2.jpg' , content_type: 'image/jpg')
socio2.save!

entrepreneur2 = Post.new(title: "Why does everyone want to be an entrepreneur nowadays?",
    description: "Everyone says that they want to be an entrepreneur because it’s cool, again.",
    text_action_text: "No one wants to slave away working in banking, consulting or law when they can change the world and be a billionaire at the same time. Hell, you don’t even need to graduate from college, let alone get an advanced degree and who needs any business experience at all? Just look at Zuckerberg. And when you’re as smart as everyone who thinks they’d be a good entrepreneur thinks they are, how can they not be super successful. It’s the easy route to luxury cars, models hanging off of every appendage and private jets.<br>&nbsp;I graduated college in the mid to late 90’s when the dotcom boom was really ramping up. It was cool to startup anything, raise a bunch of VC money, never have profit and maybe no revenue and go public. You could sell your company without even having a finished product. It was a sweet time to be a tech entrepreneur because everyone was getting rich and it was easy, right? That’s what the press reported so it must have been true.<br>&nbsp;Now valuations are big again so it’s cool, again, and everyone thinks it’s an easy life before they actually do it. The dotcom boom was cool until there was the bust and everyone went back into banking, consulting, law and general corporate America. I can’t tell if there will be as big of a bust this time but it won’t go on forever.<br>&nbsp;Being an entrepreneur seems like something cool to say when you’re in college or fresh out but it’s an exceedingly difficult life. You never turn off, your business is always on your mind, you’re not drawing a salary for a while and if you fail it’s done and you most likely lose all, or at least most, of your money. And most startups fail. It was true during the last boom and bust cycle, it is true now and it will be true in the future.<br>&nbsp;I’m all for entrepreneurship so I’m not trying to dissuade anyone but it’s a lot of hard work, you should really think through what you’re starting up and realize that there’s a high chance of failing. Instead of deciding to be an entrepreneur and then coming up with an idea, get a job in the field that you like and could see yourself starting something up in. Get a little experience, see how corporate and/or startup life works (and I’m not saying to get a job at a huge corporate company like MSFT, but maybe a smaller company or a startup), try to put some money away, build a network of like minded people who could be co-founders (and not simply your college roommate) and potential investors and advisors, and determine a product or service that you could build a company around. You’ll still most likely fail because most startups do, but you’ll gain real experience in how to start a company and hopefully learn from your mistakes. Saying you want to be an entrepreneur without an idea, and I mean a real vetted idea and not something that you and your college roommates came up with after taking bong hits, and borrowing $25k from your parents or family and blowing through it is far different than diligently exploring an idea as I described above.",
    user: nathan)
entrepreneur2.photo.attach(io: URI.open('https://miro.medium.com/max/1000/1*iKPqdjkTLDETVM6GhIclNw.jpeg'), filename: 'entrepreneur2.jpg' , content_type: 'image/jpg')
entrepreneur2.save!

science2 = Post.new(title: "Massive volcanoes could cool Earth more in a warming world",
    description: "It’s become increasingly clear that even these monumental forces are being altered by human-driven climate change",
    text_action_text: "There are few forces on Earth more powerful than a large volcanic eruption. At their most potent, volcanoes inject millions of tons of Sun-blocking particles high into the atmosphere that can cool Earth for nearly 5 years, endangering crops and leading to years without summer. The most recent, the Philippines’s Mount Pinatubo eruption in 1991, caused a temporary 0.5°C drop in global temperatures.<br>Yet it’s become increasingly clear that even these monumental forces are being altered by human-driven climate change. Declining ice cover can trigger more frequent eruptions near the poles, in Iceland and elsewhere. And an increasingly layered ocean will allow more volcano-induced cooling to linger at Earth’s surface. Now, a new study suggests increased greenhouse gases will help the plumes from large eruptions reach higher, spread faster, and reflect more sunlight, causing more abrupt and extreme cooling.<br><br>Before humanity started in on its planet-altering course, volcanoes were one of the biggest climate players. Over the long term, they belched carbon dioxide from Earth’s interior, causing warming. But in the short term, their sulfur gases often react with water to form highly reflective particles called sulfates, triggering spells of global cooling. Dark smudges of ash littering ice cores—our best evidence of these early eruptions—are a dim reflection of the wild weather left in their wake.<br>But the opposite is also true, it turns out: Climate can have a big impact on volcanoes. In the new study, Thomas Aubry, a geophysicist at the University of Cambridge, and colleagues combined computer simulations of idealized volcanic eruptions with a global climate model. They simulated the response to plumes released from midsize and large volcanoes both in historical conditions and by 2100, in a scenario when Earth is predicted to warm very rapidly.<br><br>The researchers found two countervailing trends. Normally just one or two midsize volcanic eruptions shoot through the troposphere each year, bypassing this cradle of Earth’s weather to reach the stratosphere, the calm, dry zone above. As reflective particles spread through the stratosphere, they cause a small spurt of global cooling. But when the troposphere warms, it expands in height, eventually putting the stratosphere out of reach for these eruptions.<br>“It's as if regulation basketball hoops around the world were suddenly raised a few inches, making it that much harder to score,” says Benjamin Black, a volcanologist at Rutgers University, New Brunswick, who is not affiliated with the study.<br>The story changes with Pinatubo-scale eruptions, however. In a world that warmed 6°C by 2100—an increase that matches only the most dire, and unlikely, projections of the UN —the troposphere would grow 1.5 kilometers in height. But ultramassive eruptions would still be able to punch through to the stratosphere; what’s more, their gases would actually reach higher and travel faster than in the present climate, amplifying the colling effect by 15%, the researchers report this month in <em>Nature Communications</em>. The reasons why come down to the bizarro world that is the stratosphere, Aubry says.",
    user: nico)
science2.photo.attach(io: URI.open('https://media.makeameme.org/created/volcanoes-erupting-to.jpg'), filename: 'science2.jpg' , content_type: 'image/jpg')
science2.save!




#POST TAGS SEEDS
business1.tags << [tag1, tag2]
business1.save

philosophy1.tags << [tag8, tag7, tag4]
philosophy1.save

health1.tags << [tag10]
health1.save

tech1.tags << [tag2, tag1]
tech1.save

finance1.tags << [tag3, tag4]
finance1.save

philo2.tags << [tag8, tag7]
philo2.save

science1.tags << [tag5, tag2]
science1.save

psycho1.tags << [tag6, tag7]
psycho1.save

philo3.tags << [tag8, tag6, tag4]
philo3.save

health2.tags << [tag10, tag5]
health2.save

entrepreneur1.tags << [tag4, tag1]
entrepreneur1.save

socio1.tags << [tag7, tag2]
socio1.save

business2.tags << [tag1, tag4]
business2.save

business3.tags << [tag1, tag4]
business3.save

psycho2.tags << [tag6, tag10]
psycho2.save

socio2.tags << [tag7, tag2]
socio2.save

entrepreneur2.tags << [tag4, tag1, tag8]
entrepreneur2.save

science2.tags << [tag5, tag7]
science2.save


PostUpvoted.create(user: marc, post: business1)
PostUpvoted.create(user: marc, post: business2)


puts "New stuff added successfully"
