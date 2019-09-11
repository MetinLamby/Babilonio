require 'faker'

# Destroying db entries
puts "Destroying all db entries"

Booking.destroy_all
Garden.destroy_all
User.destroy_all

puts "Finished destroying"


# Ceating fake users
puts "Creating fake users..."

20.times do |user|
  user = User.new(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: "123456")
  user.save!
end

puts "Created #{User.count} fake users..."


# Creating fake gardens
puts "Creating fake gardens..."

garden_types_array = ["Flower Garden", "Container Garden", "Yard", "Back Garden", "Botanical Garden", "Tropical Garden"]

20.times do |garden|
  garden = Garden.new(
    description: Faker::Lorem.sentence(word_count: 35),
    title: Faker::Lorem.sentence(word_count: 15),
    garden_type: garden_types_array.sample,
    price: rand(5..20).to_s,
    user_id: rand(User.first.id..User.last.id))
  garden.save!
end

puts "Created #{Garden.count} fake gardens..."


# Creating fake bookings

puts "Creating fake bookings..."

10.times do |booking|
  booking = Booking.new(
    garden_id: rand(Garden.first.id..Garden.last.id),
    user_id: rand(User.first.id..User.last.id))
  booking.save
end

puts "Created #{Booking.count} fake bookings..."
