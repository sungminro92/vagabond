# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all


City.create(name: 'Atlanta', image_url:'http://i.imgur.com/uEyWAwc.png')
City.create(name: 'New York', image_url:'http://i.imgur.com/rbQlY3F.png')
City.create(name: 'Seoul', image_url:'http://i.imgur.com/tAmZruh.png')
City.create(name: 'London', image_url:'http://i.imgur.com/iqKThGB.png')
City.create(name: 'San Francisco', image_url:'http://i.imgur.com/2A55nBf.png')
City.create(name: 'Austin', image_url:'http://i.imgur.com/8tqtGSy.png')
City.create(name: 'Barcelona', image_url:'http://i.imgur.com/B7IppDk.png')
City.create(name: 'Seattle', image_url:'http://i.imgur.com/Ec6cea9.png')
