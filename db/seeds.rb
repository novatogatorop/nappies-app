puts "Destroying all records of users, and places..."

User.destroy_all


user1 = User.create({
  username: "Lala",
  first_name: "Lala",
  last_name: "Lala",
  email: "lala@example.com",
  password: 123123,
  admin: true
})

puts "Users seeded! #{ User.count}"

place1 = Place.new({
  name: "Populus Coffe",
  address: "Maybachufer 20, Berlin",
  user: user1
  # photo1: 'place/place-cocolo/1.JPG',
  # photo2: 'place/place-cocolo/1.JPG',
  # photo3: 'place/place-cocolo/1.JPG',
  # photo4: 'place/place-cocolo/1.JPG',
  # photo5: 'place/place-cocolo/1.JPG'
})
place1.save

puts "Places seeded! #{ Place.count}"
puts 'Finished!'
