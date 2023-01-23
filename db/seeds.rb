puts "Deleting existing seed data..."
Hotel.destroy_all
User.destroy_all
Room.destroy_all
Reservation.destroy_all

puts "Creating Hotel..."

h = Hotel.create(name: "Hotel Transylvania", address: Faker::Address.full_address)

puts "Creating Users..."
25.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone_in_e164)
end

puts "Creating Rooms..."
4.times do
Room.create(beds: Faker::Number.between(from:1, to:3),kitchenette?:Faker::Boolean.boolean, hotel: h)

end

puts "Creating Reservations..."
20.times do
    Reservation.create(date:Faker::Date.forward(days:365), length_of_stay: Faker::Number.digit, user: User.all.sample, room: Room.all.sample)
end

puts "Seeding Complete..."

