# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Post.destroy_all
User.destroy_all
Comment.destroy_all

atlanta = City.create(name: 'Atlanta', image_url:'http://i.imgur.com/uEyWAwc.png')
new_york = City.create(name: 'New York', image_url:'http://i.imgur.com/rbQlY3F.png')
seoul = City.create(name: 'Seoul', image_url:'http://i.imgur.com/tAmZruh.png')
london = City.create(name: 'London', image_url:'http://i.imgur.com/iqKThGB.png')
san_francisco = City.create(name: 'San Francisco', image_url:'http://i.imgur.com/2A55nBf.png')
austin = City.create(name: 'Austin', image_url:'http://i.imgur.com/8tqtGSy.png')
barcelona = City.create(name: 'Barcelona', image_url:'http://i.imgur.com/B7IppDk.png')
seattle = City.create(name: 'Seattle', image_url:'http://i.imgur.com/Ec6cea9.png')

user = User.create(
	name: 'Blake',
  	email: 'user1@gmail.com',
  	password: '123456',
  	password_confirmation: '123456'
)

user_two = User.create(
	name: 'Sungmin',
  	email: 'CatloverChick76@hotmail.com',
  	password: 'Hello123',
  	password_confirmation: 'Hello123'
)

user_three = User.create(
	name: 'Rush',
  	email: 'SexyTravelBoy1996@yahoo.com',
  password: '654321',
  password_confirmation: '654321'
)

atlanta_post_one = Post.create( title: "Atlanta is awesome!", content: " Go roller skating at Cascade Fun Center
They shot ATL there! Also, every year they have events that bring all sorts of folks out
to slide around on that slick, shiny floor. Word of advice: you might bust your ass trying
that old reverse-in-motion trick you used to do in middle school, so don't get too turnt",
  user_id: user_two.id, city_id: atlanta.id)

atlanta_post_two = Post.create( title: "Go to Atlanta theme park!", content: "Well, there are Six Flags all over the sates,
but since atlanta has greater price (I mean 'cheaper', and when you're trying to buy 4 season tickets, its
even more cheaper! I personally recommend you do that. Also usable in other states) And when it's perfect
  weather, It's awesome. just know that to avoid holidays because you're going to get stepped by people.",
  user_id: user.id, city_id: atlanta.id)

ny_post_one = Post.create( title: "cool stuff dude", content: "We love visiting New York City! When we visit,
we spend most our time eating, since the options for food are endless. It wasn't until recently
that we realized that we haven't seen much of the city other than the insides of restaurants.
With the help of our friend Charlene, who's been living there for 10 years, we were able to
put together an NYC bucket list.", user_id: user.id, city_id: new_york.id )

seoul_post_one = Post.create( title: "Guard Changing Ceremony", content: "When visiting the Gyeongbokgung Palace, 
	don't miss out on observing the Royal Guard Changing Ceremony or the Gwanghwamun Gate Guard-on-Duty Performance. 
	Either one happens every hour between 10am to 4pm at the Gyeongbokgung Palace, every day except Tuesdays.", 
	user_id: user.id, city_id: seoul.id)

seoul_post_two = Post.create( title: "Lotte Mart Rules!", content: "Lotte Mart is the place to buy all the 
	Korean snacks you can ever dream of. Bring a big bag along because you'll need to fill it up with Market 
	brownies, tteokbokki crackers, Lotte biscuit sticks and all the other delicious Korean goodies!", 
	user_id: user.id, city_id: seoul.id)

london_post_one = Post.create( title: "British Museum", content: "One of London's top free attractions, 
	and considered its top museum by many, the British Museum is both an architectural beauty and a trove 
	of some of the world's most noted antiquities.", user_id: user.id, city_id: london.id )

london_post_two = Post.create( title: "cool stuff dude", content: "Not only is Buckingham Palace an immense 
	property, but it's symbolic of the cherished monarchy that dates back over 1,000 years. As such, 
	it's treated like an independent entity. It's the only building in the UK that comes with its own 
	zip code (SW1A 1AA).", user_id: user.id, city_id: london.id )

san_francisco_post_one = Post.create( title: "Japanese Tea Garden is awesome", content: "The Japanese Tea 
	Garden is one of the most popular attractions in San Francisco. It was built in 1894 and reflects the 
	city's role as a home for Japanese immigrants. The architect actually lived in the garden's 5 acres but 
	was forced to leave for an internment camp during World War II and was never allowed to return to his 
	home in the garden. The garden shows the characteristics of traditional Japanese gardens–harmony and 
	tranquility with classic elements such as pagodas, a Zen garden, Japanese maples (see their colors in 
	late fall), and cherry blossoms (see them in bloom in spring). Save time to get tea and a snack at the tea house.", 
	user_id: user.id, city_id: san_francisco.id )

san_francisco_post_two = Post.create( title: "Xanadu Gallery", content: "Just a half block off Union Square at 140 
	Maiden Lane is the Xanadu Gallery, a showroom of fine Asian arts and artifacts. The building was 
	designed by Frank Lloyd Wright with repeated circular shapes and a flowing  interior. It is #126 
	on the American Institute of Architects' list of 150 American buildings and definitely worth a 
	quick stop when you are in the Union Square area.", user_id: user.id, city_id: san_francisco.id )

austin_post_one = Post.create( title: "Hamilton Pool ", content: "This magical place on earth was formed 
when the dome of an underground river collapsed, leaving a ring of waterfalls and a gorgeous natural swimming pool.", 
	user_id: user.id, city_id: austin.id )

austin_post_two = Post.create( title: "Bats!!!!", content: "The best vantage point for the bats is to 
	just stand on the Congress Bridge, but there are also boats you can rent out and hills to picnic on. 
	Afraid of bats? Learn more about them because they are actually awesome and the population under 
	the bridge eat 10,000–20,000 pounds of insects and pests each night (!).", user_id: user.id, city_id: austin.id )

barcelona_post_one = Post.create( title: "Plaça Reial", content: "This is a lively square full of 
	cafés and surrounded by neo-classical buildings. Next to the fountain in the middle of the square 
	are lampposts designed by Gaudí. On Sundays, the area is transformed into a stamp and coin market.", 
	user_id: user.id, city_id: barcelona.id )

barcelona_post_two = Post.create( title: "La Rambla", content: "Strolling La Rambla is one of the most 
	quintessential things to do in Barcelona. The city's most famous street is also its most exuberant. 
		The boulevard runs along the edge of the old part of the city, reaching from the lively Plaça 
		de Catalunya down to the harbour. Beneath the plane trees, tourists and locals alike gather to 
		take in the street's non-stop action. Be sure to stop into the famous Boqueria (traditional indoor market) 
		for fresh juices, tapas or a caña in the afternoon.", user_id: user.id, city_id: barcelona.id )

seattle_post_one = Post.create( title: "Dick's Drive in", content: "Seattle has a plethora of locally 
	sourced, gluten-free, vegan, and organic food available, but let's be honest: Sometimes you don't 
	want any of that. Enter Dick's — for every Seattleite's favorite $2 non-organic, extra-gluten, 
	cheese-filled burger.", user_id: user_three.id, city_id: seattle.id )

seattle_post_two = Post.create( title: "Discovery Park", content: "Walk the coast, sit in the grass, 
	and pitch a bonfire on a warm summer day. Parched from your nature quest? Stop into Oliver's Twist 
	in Magnolia for cocktails like The Bumble — with bourbon, lemon, and creme de peche.", 
	user_id: user.id, city_id: seattle.id )

Comment.create( content:'Not sure about this!', user_id: user_two.id, post_id: atlanta_post_one.id)
Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: atlanta_post_one.id)
Comment.create( content:'I love the theme park!', user_id: user_two.id, post_id: atlanta_post_two.id)
Comment.create( content:'I love the theme park!', user_id: user_two.id, post_id: san_francisco_post_one.id)
Comment.create( content:'ok cool', user_id: user_two.id, post_id: san_francisco_post_two.id)
Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: london_post_one.id)
Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: london_post_two.id)
Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: austin_post_two.id)

Comment.create( content:'I love NYC food!', user_id: user.id, post_id: san_francisco_post_two.id)
Comment.create( content:'heck yeah', user_id: user_three.id, post_id: ny_post_one.id)
Comment.create( content:'Not sure about this!', user_id: user_two.id, post_id: austin_post_one.id)
Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: atlanta_post_two.id)
Comment.create( content:'I love the theme park!', user_id: user_two.id, post_id: barcelona_post_one.id)
Comment.create( content:'ok cool', user_id: user_two.id, post_id: barcelona_post_two.id)
Comment.create( content:'I love NYC food!', user_id: user.id, post_id: seattle_post_one.id)
Comment.create( content:'heck yeah', user_id: user_three.id, post_id: seattle_post_two.id)

# City.destroy_all
# Post.destroy_all
# User.destroy_all
# Comment.destroy_all

# atlanta = City.create(name: 'Atlanta', image_url:'http://i.imgur.com/uEyWAwc.png')
# new_york = City.create(name: 'New York', image_url:'http://i.imgur.com/rbQlY3F.png')
# seoul = City.create(name: 'Seoul', image_url:'http://i.imgur.com/tAmZruh.png')
# london = City.create(name: 'London', image_url:'http://i.imgur.com/iqKThGB.png')
# san_francisco = City.create(name: 'San Francisco', image_url:'http://i.imgur.com/2A55nBf.png')
# austin = City.create(name: 'Austin', image_url:'http://i.imgur.com/8tqtGSy.png')
# barcelona = City.create(name: 'Barcelona', image_url:'http://i.imgur.com/B7IppDk.png')
# seattle = City.create(name: 'Seattle', image_url:'http://i.imgur.com/Ec6cea9.png')

# user = User.create(
#   email: 'user1@gmail.com',
#   password: '123456',
#   password_confirmation: '123456'
# )

# atlanta_post_one = Post.create( title: "Atlanta is awesome!", content: " Go roller skating at Cascade Fun Center
# They shot ATL there! Also, every year they have events that bring all sorts of folks out
# to slide around on that slick, shiny floor. Word of advice: you might bust your ass trying
# that old reverse-in-motion trick you used to do in middle school, so don’t get too turnt",
#   user_id: user.id, city_id: atlanta.id)

# atlanta_post_two = Post.create( title: "Go to Atlanta theme park!", content: "Well, there are Six Flags all over the sates,
# but since atlanta has greater price (I mean 'cheaper', and when you're trying to buy 4 season tickets, its
# even more cheaper! I personally recommend you do that. Also usable in other states) And when it's perfect
#   weather, It's awesome. just know that to avoid holidays because you're going to get stepped by people.",
#   user_id: user.id, city_id: atlanta.id)

# ny_post_one = Post.create( title: "cool stuff dude", content: "We love visiting New York City! When we visit,
# we spend most our time eating, since the options for food are endless. It wasn’t until recently
# that we realized that we haven’t seen much of the city other than the insides of restaurants.
# With the help of our friend Charlene, who’s been living there for 10 years, we were able to
# put together an NYC bucket list.", user_id: user.id, city_id: new_york.id )

# Comment.create( content:'Not sure about this!', user_id: user.id, post_id: atlanta_post_one.id)
# Comment.create( content:'Thanks so much for this awesome post!', user_id: user.id, post_id: atlanta_post_one.id)
# Comment.create( content:'I love the theme park!', user_id: user.id, post_id: atlanta_post_two.id)
# Comment.create( content:'ok cool', user_id: user.id, post_id: atlanta_post_two.id)
# Comment.create( content:'I love NYC food!', user_id: user.id, post_id: ny_post_one.id)
# Comment.create( content:'heck yeah', user_id: user.id, post_id: ny_post_one.id)

