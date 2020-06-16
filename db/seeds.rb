puts 'Destroying all users'
User.destroy_all
puts 'Destroying all places'
Place.destroy_all
puts 'Destroying all types'
Type.destroy_all

puts 'Creating users'
users = [
  {
  username: "Lala",
  first_name: "Lala",
  last_name: "Lala",
  email: "lala@example.com",
  password: 123123,
  admin: true
  },
]
User.create!(users)
puts "Done with Users #{ User.count}"

puts 'Creating types'
types = [
  {
    name: 'Restaurant'
  },
  {
    name: 'Coffee Shop'
  }
]
Type.create!(types)
puts "Done with Types #{ Type.count}"

puts 'Creating places'
places =[
  {
    name: "me Collectors Room Berlin",
    address: "Maybachufer 20, Berlin",
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Coffee Shop'),
    changing_table: true,
    toy: true,
    high_chair: true,
    play_area: true
  },
  {
    name: "Populus Coffee",
    address: "Maybachufer 20, Berlin",
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Coffee Shop'),
    changing_table: true,
    toy: true,
    high_chair: true,
    play_area: true
  },
  {
    name: 'Berlinische Galerie',
    address: 'Alte Jakobstraße 124-128, Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: true,
    toy: true,
    high_chair: true,
    play_area: false
  },
  {
    name: 'Black Isle Bakery',
    address: 'Linienstraße 54, Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Coffee Shop'),
    changing_table: false,
    toy: false,
    high_chair: true,
    play_area: false
  },
  {
    name: 'Bonanza Coffee Roasters',
    address: 'Adalbertstraße 70, 10999 Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: false,
    toy: true,
    high_chair: false,
    play_area: false
  },
  {
    name: 'Pasticceria Castelnuovo',
    address: 'Via dei Tulipani 18, Milano',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: false,
    toy: true,
    high_chair: true,
    play_area: false
  },
  {
    name: 'Dussmann Das KulturKaufhaus',
    address: 'Largo Isarco 2, Milano',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: true,
    toy: true,
    high_chair: true,
    play_area: true
  },
  {
    name: "Populus Coffee",
    address: "Maybachufer 20, Berlin",
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Coffee Shop'),
    changing_table: true,
    toy: false,
    high_chair: true,
    play_area: true
  },
  {
    name: 'Berlinische Galerie',
    address: 'Alte Jakobstraße 124-128, Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: true,
    toy: false,
    high_chair: true,
    play_area: false
  },
  {
    name: 'Black Isle Bakery',
    address: 'Linienstraße 54, Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Coffee Shop'),
    changing_table: false,
    toy: false,
    high_chair: true,
    play_area: false
  },
  {
    name: 'Bonanza Coffee Roasters',
    address: 'Adalbertstraße 70, 10999 Berlin',
    user: User.find_by(username: 'Lala'),
    type: Type.find_by(name: 'Restaurant'),
    changing_table: false,
    toy: true,
    high_chair: false,
    play_area: false
  }
]
Place.create!(places)
puts "Done with Places #{ Place.count}"


# user1 = User.create({
#   username: "Lala",
#   first_name: "Lala",
#   last_name: "Lala",
#   email: "lala@example.com",
#   password: 123123,
#   admin: true
# })


# place1 = Place.new({
#   name: "Populus Coffee",
#   address: "Maybachufer 20, Berlin",
#   user: user1
# })
# place1.save

# place2 = Place.new(
#     name: 'Berlinische Galerie',
#     address: 'Alte Jakobstraße 124-128, Berlin',
#     user: user1
# )
# place2.save

# place3 = Place.new(
#     name: 'Black Isle Bakery',
#     address: 'Linienstraße 54, Berlin',
#     user: user1
# )
# place3.save

# place4 = Place.new(
#     name: 'Bonanza Coffee Roasters',
#     address: 'Adalbertstraße 70, 10999 Berlin',
#     user: user1
# )
# place4.save

# place5 = Place.new(
#     name: 'Chipperfield Kantine',
#     address: 'Joachimstraße 11, Berlin',
#     user: user1
# )
# place5.save

# place6 = Place.new(
#     name: 'Commonground',
#     address: 'Rosenthalerstraße 1, Berlin',
#     user: user1
# )
# place6.save

# place7 = Place.new(
#     name: 'Distrikt Coffee',
#     address: 'Bergstraße 68, Berlin',
#     user: user1
# )
# place7.save

# place8 = Place.new(
#     name: 'Early Bird',
#     address: 'Winsstraße 68, Berlin',
#     user: user1
# )
# place8.save

# place9 = Place.new(
#     name: 'Hermmans Berlin',
#     address: 'Torstraße 116-118, Berlin',
#     user: user1
# )
# place9.save

# place10 = Place.new(
#     name: 'König Galerie',
#     address: 'Alexandrinenstraße 118-121, Berlin',
#     user: user1
# )
# place10.save

# place11 = Place.new(
#     name: 'Musashi',
#     address: 'Kottbusser Damm 102, Berlin',
#     user: user1
# )
# place11.save

# place12 = Place.new(
#     name: 'Oxymoron',
#     address: 'Rosenthaler Str. 40-41, Berlin',
#     user: user1
# )
# place12.save

# place13 = Place.new(
#   name: 'Refinery High End Coffee',
#   address: 'Albrechtstraße 11B, Berlin',
#   user: user1
# )
# place13.save

# place14 = Place.new(
#   name: 'St. Oberholz',
#   address: 'Zehdenicker Str. 1, Berlin',
#   user: user1
# )
# place14.save

# place15 = Place.new(
#   name: 'The Greens Coffee and Plants',
#   address: 'Am Krögel 2, Berlin',
#   user: user1
# )
# place15.save

# place16 = Place.new(
#   name: 'The Store X Berlin',
#   address: 'Torstraße 1, Berlin',
#   user: user1
# )
# place16.save

# place17 = Place.new(
#   name: 'Zeit für Brot',
#   address: 'Weinbergsweg 2, Berlin',
#   user: user1
# )
# place17.save

# puts "Places seeded! #{ Place.count}"
# puts 'Finished!'







