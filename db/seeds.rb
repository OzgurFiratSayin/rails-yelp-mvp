# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
def random
  return "0207-#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
end
options = ["chinese", "italian", "japanese", "french", "belgian"]
a = { name: "Ananin yeri", address: "7 Boundary St, London E2 7JE", phone_number: random(), category: options.sample }
b =  { name: "Family", address: "9 Boundary St, London E2 7JE", phone_number: random(), category: options.sample }
c = { name: "Cousins", address: "11 Boundary St, London E2 7JE", phone_number: random(), category: options.sample }
d = { name: "Bros", address: "13 Boundary St, London E2 7JE", phone_number: random(), category: options.sample }
e = { name: "Eatin", address: "15 Boundary St, London E2 7JE", phone_number: random(), category: options.sample }


[a, b, c, d, e].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"