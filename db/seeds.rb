# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dogsitters = []
cities = []
dogs = []
dogstrolls = []
strolls = []


10.times do |x|
	city = City.create!(
		city_name: Faker::Address.city)
	cities << city
end
puts "Seeding done for cities"


50.times do |x|
	dogsit = DogSitter.create!(
		first_name: Faker::Name.first_name,
		city_id: cities[rand(0..9)].id)
	dogsitters << dogsit
end 
puts "Seeding done for dositters"


100.times do |x|
	dog = Dog.create!(
		first_name: Faker::Name.first_name,
		city_id: cities[rand(0..9)].id,
		)
	dogs << dog
end 
puts "Seeding done for dogs"


#seed des strolls

t1 = Time.parse("2019-10-23 14:40:34")
t2 = Time.parse("2021-01-01 00:00:00")

100.times do |x|
	stroll = Stroll.create!(
		date: rand(t1..t2),
		dog_sitter_id: dogsitters[rand(0..49)].id,
		city_id: cities[rand(0..9)].id
		)
	strolls << stroll
end 
puts "Seeding done pour les strolls"


20.times do |x|
	dogstr = Dogsstroll.create!(
		stroll_id: strolls[rand(0..99)].id,
		dog_id: dogs[rand(0..99)].id
		)
	dogstrolls << dogstr
end

puts "Seeding done for dogs per stroll"




