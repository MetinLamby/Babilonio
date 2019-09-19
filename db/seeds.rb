require 'faker'

# Destroying db entries
puts "Destroying all db entries"

Booking.destroy_all
Garden.destroy_all
User.destroy_all

puts "Finished destroying"


# Ceating fake users


owner_urls = [
  "https://images.unsplash.com/photo-1560749003-f4b1e17e2dff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
  "https://images.unsplash.com/photo-1446070797306-0da248ac878d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
  "https://images.unsplash.com/photo-1545823812-046670c74194?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1470058869958-2a77ade41c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
]

puts "Creating fake users..."

20.times do |user|
  user = User.new(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    job: Faker::Job.title,
    password: "123456")
  user.remote_photo_url = owner_urls.sample
  user.save!
end

puts "Created #{User.count} fake users..."


# Creating fake gardens
puts "Creating fake gardens..."

address_array = [
  "Unter den Linden 77, 10117 Berlin",
  "Albrechtstraße 22, 10117 Berlin",
  "Krausnickstraße 9, 10115 Berlin",
  "Heinrich-Heine-Straße 9, 10179 Berlin",
  "Singerstraße 22, 10243 Berlin",
  "Ifflandstraße 12, 10179 Berlin",
  "Calvinstraße 8, 10557 Berlin",
  "Bandelstraße 44, 10559 Berlin",
  "Birkenstraße 51-53, Berlin",
  "Genthiner Str. 41, 10785 Berlin",
  "Winterfeldtstraße 27, 10781 Berlin",
  "Winterfeldtstraße 67-53, 10781 Berlin",
  "Grainauer Str. 13-1, 10777 Berlin",
  "Friesenstraße 16, 10965 Berlin",
  "Großbeerenstraße 57A, 10965 Berlin",
  "Rügener Str. 2, 13355 Berlin",
  "Bellermannstraße 92, 13357 Berlin",
  "Exerzierstraße 12, 13357 Berlin",
  "Thurneysserstraße 6, 13357 Berlin",
  "Schulstraße 41, 13347 Berlin",
  "Triftstraße 58-61, 13353 Berlin",
  "Kiautschoustraße 3, 13353 Berlin",
  "Ugandastraße 1-8, 13351 Berlin",
  "Sambesistraße 3-10, 13351 Berlin",
  "Müllerstraße 79B, 13349 Berlin",
]

urls = [
  "https://images.unsplash.com/photo-1560749003-f4b1e17e2dff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
  "https://images.unsplash.com/photo-1446070797306-0da248ac878d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
  "https://images.unsplash.com/photo-1545823812-046670c74194?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1470058869958-2a77ade41c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
]


garden_types_array = ["Flower Garden", "Container Garden", "Yard", "Back Garden", "Botanical Garden", "Tropical Garden"]

# tropical_garden = Garden.new(
#   description: Faker::Lorem.sentence(word_count: 35),
#   title: Faker::Lorem.sentence(word_count: 15),
#   garden_type: "Tropical Garden",
#   price: rand(5..20).to_s,
#   address: address_array.sample,
#   user_id: rand(User.first.id..User.last.id))
# tropical_garden.remote_photo_url = "https://images.unsplash.com/photo-1470058869958-2a77ade41c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
# tropical_garden.save!

# botanical_garden = Garden.new(
#   description: Faker::Lorem.sentence(word_count: 35),
#   title: Faker::Lorem.sentence(word_count: 15),
#   garden_type: "Botanical Garden",
#   price: rand(5..20).to_s,
#   address: address_array.sample,
#   user_id: rand(User.first.id..User.last.id))
# botanical_garden.remote_photo_url = "https://images.unsplash.com/photo-1545823812-046670c74194?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
# botanical_garden.save!

# botanical_garden = Garden.new(
#   description: Faker::Lorem.sentence(word_count: 35),
#   title: Faker::Lorem.sentence(word_count: 15),
#   garden_type: "Botanical Garden",
#   price: rand(5..20).to_s,
#   address: address_array.sample,
#   user_id: rand(User.first.id..User.last.id))
# botanical_garden.remote_photo_url = "https://images.unsplash.com/photo-1545823812-046670c74194?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
# botanical_garden.save!

20.times do |garden|
  garden = Garden.new(
    description: Faker::Lorem.sentence(word_count: 35),
    title: Faker::Lorem.sentence(word_count: 15),
    garden_type: garden_types_array.sample,
    price: rand(5..20).to_s,
    address: address_array.sample,
    user_id: rand(User.first.id..User.last.id))
  garden.remote_photo_url = urls.sample
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
