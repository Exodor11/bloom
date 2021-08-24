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
tag1 = Tag.create(name:"business", category:"business")
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
post1.photo.attach(io: URI.open('https://media.makeameme.org/created/i-know-everything-ad0efd48df.jpg'), filename: 'post.jpg', content_type: 'image/jpg')
post1.save!

post2 = Post.new(title: "Data Scientists Will be Extinct in 10 Years",
                description: "And Why It’s Not a Bad Thing",
                text: 'As advances in AI continue to progress in leaps and bounds, accessibility to data science at a base level has become increasingly democratized. Traditional entry barriers to the field such as a lack of data and computing power have been swept aside with a continuous supply of new data startups popping up(some offering access for as little as a cup of coffee a day) and all powerful cloud computing removing the need for expensive onsite hardware. Rounding out the trinity of prerequisites, is the skill and know-how to implement, which has arguably become the most ubiquitous aspect of data science. One does not need to look far to find online tutorials touting taglines like “implement X model in seconds” , “apply Z method to your data in just a few lines of code”. In a digital world, instant gratification has become the name of the game. While improved accessibility is not detrimental on face value, beneath the dazzling array of software libraries and shiny new models, the true purpose of data science has become obscured and at times even forgotten. For it is not to run complex models for the sake of doing so, or to optimize an arbitrary performance metric, but to use as a tool to solve real world problems.
                A simple but relatable example is the Iris data set. How many have used it to demonstrate an algorithm without sparing a thought for what a sepal is let alone why we measure its length? While these may seem like trivial considerations for the budding practitioner who might be more interested in adding a new model to their repertoire, it was less than trivial for Edgar Anderson, a botanist, who cataloged the attributes in question to understand variations in Iris flowers. Despite this being a contrived example it demonstrates a simple point; the mainstream has become more focused on “doing” data science rather than “applying” data science. However, this misalignment is not the cause for the decline of the data scientist but a symptom. To understand the origin of the problem we must step back and take a bird’s eye view.
                Data science has the curious distinction of being one of the few fields of study that leaves the practitioner without a domain. Pharmacy students become pharmacists, law students become lawyers, accounting students become accountants. Data science students must therefore become data scientists? But data scientists of what? The broad application of data science proves to be a double edged sword. On one side, it is a powerful toolbox that can be applied to any industry where data is generated and captured. On the other, the general applicability of these tools means that rarely will the user have true domain knowledge of said industries before the fact. Nevertheless, the problem was insignificant during the rise of data science as employers rushed to harness this nascent technology without fully understanding what it was and how it could be fully integrated into their company.
                However, nearly a decade later, both businesses and the environment they operate in have evolved. They now strive for data science maturity with large entrenched teams benchmarked by established industry standards. The pressing hiring demand has shifted to problem solvers and critical thinkers who understand the business, the respective industry as well as its stakeholders. No longer will the ability navigate a couple of software packages or regurgitate a few lines of code suffice, nor will a data science practitioner be defined by the ability to code. This is evidenced by the increasing popularity of no code, autoML solutions such as Data Robot, Rapid Miner and Alteryx.
                What Does This Mean?
                Data scientists will be extinct in 10 years (give or take), or at least the role title will be. Going forward, the skill set collectively known as data science will be borne by a new generation of data savvy business specialists and subject matter experts who are able to imbue analysis with their deep domain knowledge, irrespective of whether they can code or not. Their titles will reflect their expertise rather than the means by which they demonstrate it, be it compliance specialists, product managers or investment analysts. We don’t need to look back far to find historic precedents. During the advent of the spreadsheet, data entry specialists were highly coveted, but nowadays, as Cole Nussbaumer Knaflic (the author of “Storytelling With Data”) aptly observes, proficiency with Microsoft Office suite is a bare minimum. Before that, the ability to touch type with a typewriter was considered a specialist skill, however with the accessibility of personal computing it has also become assumed.
                Lastly, for those considering a career in data science or commencing their studies, it may serve you well to constantly refer back to the Venn diagram that you will undoubtedly come across. It describes data science as an confluence of statistics, programming and domain knowledge. Despite each occupying an equal share of the intersecting area, some may warrant a higher weighting than others.
                Disclaimer: Views are my own, based on my observations and experiences. It’s ok if you don’t agree, productive discussion is welcome.', 
                user: marc)
post2.photo.attach(io: URI.open('https://miro.medium.com/max/1230/1*Wsfwcke-uxvfW3zkMtNWnw.jpeg'), filename: 'post.jpg', content_type: 'image/jpg')
post2.save!

post3 = Post.new(title: "Why Managers Fear a Remote-Work Future",
                description: "Like it or not, the way we work has already evolved",
                text: 'For many workers, COVID-19’s impact has depended greatly on one question: Can I work from home or am I tethered to my workplace? Quarantines, lockdowns, and self-imposed isolation have pushed tens of millions around the world to work from home, accelerating a workplace experiment that had struggled to gain traction before COVID-19 hit. 
                Now, well into the pandemic, the limitations and the benefits of remote work are clearer. Although many people are returning to the workplace as economies reopen—the majority could not work remotely at all—executives have indicated in surveys that hybrid models of remote work for some employees are here to stay. The virus has broken through cultural and technological barriers that prevented remote work in the past, setting in motion a structural shift in where work takes place, at least for some people. Now that vaccines are awaiting approval, the question looms: To what extent will remote work persist? In this article, we assess the possibility for various work activities to be performed remotely. Building on the McKinsey Global Institute’s body of work on automation, AI, and the future of work, we extend our models to consider where work is performed.1 Our analysis finds that the potential for remote work is highly concentrated among highly skilled, highly educated workers in a handful of industries, occupations, and geographies.
                More than 20 percent of the workforce could work remotely three to five days a week as effectively as they could if working from an office. If remote work took hold at that level, that would mean three to four times as many people working from home than before the pandemic and would have a profound impact on urban economies, transportation, and consumer spending, among other things.', 
                user: marc)
post3.photo.attach(io: URI.open('https://remote-tools-images.s3.amazonaws.com/work-from-home-memes/16.jpg'), filename: 'post.jpg', content_type: 'image/jpg')
post3.save!

post4 = Post.new(title: "The Magic Of Gamification with Real-Life Examples",
                description: "Engagement is essentially the thing that makes the world go round. Do you know some great gamification examples? ",
                text: 'We do. And we want to share them with you. When you take kids to school you want them to be engaged in their studies, otherwise, they will get bored, learn nothing, start misbehaving.
                      What about the time when you go to work? You want your employers to be engaged with their tasks: dozens of studies have shown that people work better when they are engaged.
                      Let’s imagine you come up with a new product, a new app, a new anything, you want people to enjoy using it more than anything else, right?
                      Even if the app is about something as dull as keeping finances together.
                      In fact, let’s stop here for a second. Some apps are naturally engaging: it’s fun to take pictures, chat on Facebook (well, mostly fun), play Candy Crush, or choose a nail polish.
                      It’s not as much fun organizing your work, finances, trying to lead a healthier or more eco-friendly lifestyle, and so on.
                      And that’s when gamification comes in. Let’s cover the basics of gamification, and dive into gamification in real-life with some examples.
                      What Is Gamification? Gamification is a rather new concept in a grand scheme of things. New products get developed every day and brand loyalty is at its worst. It’s not enough that your product does what it is supposed to well.
                      It has to make a user enjoy the process, maybe even become addicted to the product, in a way. You can include the following elements to gamify your app even more:', 
                user: nico)
post4.photo.attach(io: URI.open('http://blog.emakina.com/wp-content/uploads/2011/10/tumblr_lp9s9uLH1l1qhr7tw.jpeg'), filename: 'post.jpg', content_type: 'image/jpg')
post4.save!

post5 = Post.new(title: "10 Business Articles Every Entrepreneur Should Read",
                description: "Just sharing my personal reading list on entrepreneurship, enjoy !",
                text: 'The Top 20 Business Articles:
                1. Mark Cuban Says These are The Dumbest Things Entrepreneurs Do, Entrepreneur
                Most likely, you’ve watched Mark Cuban on Shark Tank, or know of his various business ventures. Therefore, it’s clear that he knows a thing or two about running a businesses. In this article, Cuban implores new entrepreneurs not to fall into three, easy-to-miss traps.
                
                2. How Do Small Business Loans Work? The Fora Financial Blog
                If you’re interested in pursuing additional financing for you business, it’s crucial to understand how the small business loan process works. In this comprehensive guide, we explain how to apply, qualify for, and repay a business loan. By doing this correctly, you can receive the financing that your business requires!
                
                3. What Makes a Leader? Harvard Business Review
                Business owners have to wear many hats, and most importantly, they have to be strong leaders. In this article, Harvard Business Review discusses what a leader looks like, and how you can improve your leadership skills.
                
                4. Why You Hate Work, New York Times
                Just 13 percent of workers worldwide report feeling fulfilled at work, so it’s no wonder so many people hate their jobs. As a business owner, you need to cultivate an environment that gives employees what they need to be fulfilled — this article provides a roadmap.
                
                5. 50 Signs You Might Be an Entrepreneur, Entrepreneur.com
                Are you struggling to find a career that you’re passionate about? Or, maybe you don’t enjoy working for yourself and would rather work independently. If so, you might be the type of person that would excel as an entrepreneur. Check out the 50 signs that reveal your entrepreneurial tendencies.
                
                6. How to Become a Millionaire by 30, Entrepreneur.com
                Entrepreneurship isn’t just about making money; one of the most notable reasons is that many people want to work for themselves. In this article, Grant Cardone reveals his ten steps on his path to becoming a millionaire.
                
                7. Why Google Doesn’t Care About College Degrees, VentureBeat.com
                Look no further than Google for validation that you don’t need a college degree to start a business. This article reviews five reasons executives at Google don’t care about college degrees in their hiring process.
                
                8. 7 Rejections, Medium.com
                Airbnb’s CEO Brian Chesky received five rejection letters from potential investors and was ignored by the other two he wrote to. This article reviews the seven rejections Chesky received as he sought funding for his company that changed the travel industry.
                
                9. My Advice to First-Time Entrepreneurs, Medium.com
                In his Medium.com article, Gary Vaynerchuk highlights his top three pieces of advice for first-time entrepreneurs.
                
                10. The Best Startup Advice You’ll Ever Receive, ProductHunt.com
                This article packs a punch, delivering the best startup advice from some of the country’s best founders.', 
                user: nathan)
post5.photo.attach(io: URI.open('https://miro.medium.com/max/400/1*iFOeoAhVD2Wojgk9P66vUg.jpeg'), filename: 'post.jpg', content_type: 'image/jpg')
post5.save!






post101 = Post.new(title: "America's decline on the world stage",
                description: "Kabul is yet another domino for the declining giant",
                text: "The taliban is not the North Vietnamese army,” declared President Joe Biden on July 8th, days after America abandoned Bagram air base, the hub of its war in Afghanistan for 20 years, without telling its Afghan commander. 
                “They’re not remotely comparable in terms of capability. There’s going to be no circumstance where you see people being lifted off the roof of the embassy of the United States from Afghanistan.” By August 15th Chinooks were rattling windows in Kabul, shuttling American diplomats from their hulking embassy. At the city’s airport, desperate Afghans swarmed the runway; some clung to the undercarriage of a c-17 transporter, falling to their deaths. ",
                user: romain)
post101.photo.attach(io: URI.open('https://www.economist.com/img/b/1280/720/90/sites/default/files/images/print-edition/20210821_FBP001_0.jpg'), filename: 'post101.jpg', content_type: 'image/jpg')
post101.save!
post102 = Post.new(title: "Low Cost Transatlantic flights",
                description: "London to New York for next to nothing are becoming a thing",
                text: "Perhaps jetblue believes that the sky is darkest before dawn. On August 11th America’s sixth-biggest airline, known for its no-frills domestic services, launched its first transatlantic flights, between New York and London. The timing seems plucky. America has yet to follow European countries in lifting tough pandemic-era cross-border travel restrictions. Industry insiders think that long-haul travel will be the last sort to rebound. And low-cost intercontinental travel has historically been a tough business. Can JetBlue crack it?
                      The flight path of failure can be tracked from Freddie Laker’s Skytrain in the 1970s, via People Express, Tower Air and Air Berlin, to the more recent hard landings for Denmark’s Primera Air in 2018 and Iceland’s wow in 2019. Norwegian Air Shuttle, which had captured a third of the worldwide low-cost-long-haul market, gave up on it in January, a victim of reckless expansion as much as of covid-19. Even survivors have little to shout about. Malaysia’s AirAsia x has made an annual pre-tax profit only twice since it went public in 2013.",
                user: romain)
post102.photo.attach(io: URI.open('https://i.pinimg.com/originals/55/44/c3/5544c3cbf8e9195e0654a090dabe81c0.jpg'), filename: 'post102.jpg', content_type: 'image/jpg')
post102.save!
post103 = Post.new(title: "How Minecraft is helping children with autism make new friends",
                description: "Playing video games online can be antisocial – but the Autcraft community is helping children with autism learn social skills and build relationships",
                text: "LIKE many constructions, it started small. But now thousands of children with autism are making friends and learning social skills by playing a version of online building game Minecraft.
                  Stuart Duncan got the idea through a popular blog he ran about his own experiences with autism as well as bringing up a son with autism. Other parents with autistic children started telling him that their kids were crazy about a game that let them explore a randomly generated wilderness. However, despite loving the game, many of the children were being bullied by other players.
                  So, in 2013, Duncan, a web developer in Timmins, Canada, set up a server to run a version of Minecraft exclusively for children with autism and their families. He thought the invite-only server would attract 10 or 20 people. To his surprise, hundreds requested to join in the first few days.
                  Now, almost three years later, running “Autcraft” is his full-time job. The community boasts nearly 7000 members, along with a team of admins to help manage its many activities. “Parents see such a benefit for themselves and their children,” says Duncan.",
                user: nico)
post103.photo.attach(io: URI.open('https://cdn.minecraft-resourcepacks.com/wp-content/uploads/2021/01/minecraft-meme-2.jpg'), filename: 'post103.jpg', content_type: 'image/jpg')
post103.save!
post104 = Post.new(title: "Thin-air therapy: The unexpected medical benefits of hypoxia",
                description: "Our organs and cells die without enough oxygen, but in some instances, hypoxia may actually hasten the healing process – and even help people to lose weight",
                text: "MOUNTAINEERS Ralf Dujmovits and Nancy Hansen are no strangers to thin air, having collectively reached the summits of all eight of the world’s highest mountains. But when they entered the hypoxia chamber at the German Aerospace Center (DLR) in Cologne in May 2018, they were effectively climbing one of the highest peaks of their careers. After a two-week acclimatisation, they spent 16 days breathing air thinner than at Everest base camp – including four days at the equivalent of 7112 metres. This is just shy of the “death zone” over 8000 metres, where the lack of oxygen impairs climbers’ judgement and increases their risk of heart attack and stroke.
                Time and again, the two mountaineers – and those observing them – questioned whether they should keep going, but they did. If Dujmovits and Hansen could show that humans can tolerate extended periods of low oxygen, known as hypoxia, it would pave the way for an even more ambitious experiment: to test whether, sometimes, it might even be beneficial to starve people of oxygen.
                This may sound strange. After all, our organs and tissues need oxygen. Indeed, astonishingly low oxygen levels in people with covid-19 have perplexed and panicked doctors (See “Happy hypoxia?”), and treatment guidelines recommend giving extra oxygen. After a heart attack or stroke, people are routinely given oxygen too, to ensure their tissues don’t die.
                Yet, for all this, surprisingly, there are hints that hearts and spinal cord …",
                user: marc)
post104.photo.attach(io: URI.open('https://i.redd.it/du5kv7a5xqr61.jpg'), filename: 'post104.jpg', content_type: 'image/jpg')
post104.save!

post105 = Post.new(title: "New Google Pixel Phone Is New Yet Familiar",
                description: "Google's newest Pixel phone is solid and affordable at $449, even if the 5G support leaves plenty of hanging questions.",
                text: "Google's $449 Pixel 5A with 5G is the second major Pixel announcement this year, hot on the heels of the Pixel 6 teaser earlier this month. It features a Qualcomm Snapdragon 765G processor that powers a 6.34-inch OLED display. The phone also has IP67 water- and dust-resistance.
                So while Google's highest-end Pixel 6 and 6 Pro phones will include the new in-house Tensor chip, the 5A (as I'll call it from now on) will have more in common with last year's Pixel 4A 5G. For Pixel fans with deeper pockets, the Pixel 6 and 6 Pro's chip and redesign could be exciting, but this Pixel likely will be shooting for a more budget-conscious crowd.
                For the value, it's hard to not like what Google has done with the Pixel 5A. The only real thing holding it back is Google's inability to commit to supporting upcoming 5G networks that are set to start coming online in a few months.",
                user: nathan)
post105.photo.attach(io: URI.open('https://s.yimg.com/uu/api/res/1.2/MmX5eux5yrPJN0KEt2i8vw--~B/aD0xMTUzO3c9MjA0ODthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/os/creatr-uploaded-images/2021-08/bb81e872-feb9-11eb-bbff-0a2170ea78de.cf.jpg'), filename: 'post105.jpg', content_type: 'image/jpg')
post105.save!




#POST TAGS SEEDS
post1.tags << [tag6, tag9]
post1.save

post2.tags << [tag1, tag2]
post2.save

post3.tags << [tag1, tag2, tag7]
post3.save

post4.tags << [tag2, tag6]
post4.save

post5.tags << [tag1, tag4, tag3]
post5.save


post101.tags << [tag9, tag1]
post101.save

post102.tags << [tag1, tag4, tag2]
post102.save

post103.tags << [tag2, tag6, tag10]
post103.save

post104.tags << [tag10, tag6]
post104.save

post105.tags << [tag2, tag1]
post105.save







