# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Post.destroy_all


atlanta = City.create(name: 'Atlanta', image_url:'http://i.imgur.com/uEyWAwc.png')
new_york = City.create(name: 'New York', image_url:'http://i.imgur.com/rbQlY3F.png')
seoul = City.create(name: 'Seoul', image_url:'http://i.imgur.com/tAmZruh.png')
london = City.create(name: 'London', image_url:'http://i.imgur.com/iqKThGB.png')
san_francisco = City.create(name: 'San Francisco', image_url:'http://i.imgur.com/2A55nBf.png')
austin = City.create(name: 'Austin', image_url:'http://i.imgur.com/8tqtGSy.png')
barcelona = City.create(name: 'Barcelona', image_url:'http://i.imgur.com/B7IppDk.png')
seattle = City.create(name: 'Seattle', image_url:'http://i.imgur.com/Ec6cea9.png')

# user = User.create(
#   email: 'user@domain.com',
#   password: '123456789',
#   password_confirmation: '123456789'
# )

Post.create( title: "Atlanta is awesome!", content: " Go roller skating at Cascade Fun Center
They shot ATL there! Also, every year they have events that bring all sorts of folks out to slide around on that slick, shiny floor. Word of advice: you might bust your ass trying that old reverse-in-motion trick you used to do in middle school, so don’t get too turnt", user_id: 1, city_id: atlanta.id,  )

Post.create( content: "We love visiting New York City! When we visit, we spend most our time eating, since the options for food are endless. It wasn’t until recently that we realized that we haven’t seen much of the city other than the insides of restaurants. With the help of our friend Charlene, who’s been living there for 10 years, we were able to put together an NYC bucket list.", city_id: new_york.id, user_id: 1 )


# atlanta = City.create

# grocery_category = Category.create(name: "grocery store")
# sports_category = Category.create(name: "sports")

# Create lots of data
# Todo.create(content: "Grab some milk", category_id: grocery_category.id )
# Todo.create(content: "A dozen bananas", category_id: grocery_category.id)

# Todo.create(content: "Play soccer", category_id: sports_category.id)
# Todo.create(content: "Shoot hoops", category_id: sports_category.id)

# Post.create
# create_table "posts", force: :cascade do |t|
#     t.text     "content"
#     t.integer  "user_id"
#     t.integer  "city_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
