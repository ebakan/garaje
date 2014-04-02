# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!([
  {email: "u0@example.com", password: "foobarbaz"},
  {email: "u1@example.com", password: "foobarbaz"},
  {email: "u2@example.com", password: "foobarbaz"},
  {email: "u3@example.com", password: "foobarbaz"},
  {email: "u4@example.com", password: "foobarbaz"}
])

garages = Garage.create!([
  {user: users[2], name: "Garage 0"},
  {user: users[2], name: "Garage 1"},
  {user: users[1], name: "Garage 2"},
  {user: users[3], name: "Garage 3"},
  {user: users[2], name: "Garage 4"},
  {user: users[0], name: "Garage 5"},
  {user: users[2], name: "Garage 6"},
  {user: users[0], name: "Garage 7"},
  {user: users[2], name: "Garage 9"},
  {user: users[4], name: "Garage 9"}
])

Permission.create!([
  {user: users[0], garage: garages[2]},
  {user: users[2], garage: garages[8]},
  {user: users[0], garage: garages[0]},
  {user: users[1], garage: garages[0]},
  {user: users[3], garage: garages[0]},
  {user: users[0], garage: garages[1]},
  {user: users[1], garage: garages[4]},
  {user: users[2], garage: garages[9]},
  {user: users[1], garage: garages[2]},
  {user: users[0], garage: garages[8]},
  {user: users[1], garage: garages[6]},
  {user: users[3], garage: garages[3]},
  {user: users[2], garage: garages[2]},
  {user: users[2], garage: garages[0]},
  {user: users[1], garage: garages[5]},
  {user: users[4], garage: garages[0]},
  {user: users[0], garage: garages[5]},
  {user: users[4], garage: garages[6]},
  {user: users[3], garage: garages[1]},
  {user: users[1], garage: garages[9]}
])
