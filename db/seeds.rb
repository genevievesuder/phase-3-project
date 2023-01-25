puts "Deleting existing seed data..."
Hotel.destroy_all
User.destroy_all
Room.destroy_all
Reservation.destroy_all
Amenitie.destroy_all

puts "Creating Hotel..."

h = Hotel.create(name: "Hotel Transylvania", address: Faker::Address.full_address)

puts "Creating Users..."
25.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone_in_e164)
end

puts "Creating Rooms..."

r1 = Room.create(
    room_name:"The Aegean",
    bed_size: "1 Queen bed",
    kitchenette?:false, 
    hotel: h, 
    image_url: "https://cache.marriott.com/content/dam/marriott-renditions/ROMDU/romdu-junior-suite-3205-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*")
r2 = Room.create(
    room_name:"The Cerulean",
    bed_size: "2 Queen beds",
    kitchenette?:false, 
    hotel: h, 
    image_url: "https://www.elliotparkhotel.com/wp-content/uploads/2018/05/double-queen-eph-01.jpg")
r3 = Room.create(
    room_name: "The Sapphire",
    bed_size: "1 King bed",
    kitchenette?:true, 
    hotel: h, 
    image_url:"https://media.cntraveler.com/photos/5b7c5b40bc61001ecb8c9e3e/16:9/w_1600,c_limit/Renaissance-Montre%CC%81al_2018_Guestroom_Standard_King_4520.jpg")
r4 = Room.create(
    room_name: "The Lapis Lazuli Suite",
    bed_size: "California King bed", 
    kitchenette?:true, 
    hotel: h, 
    image_url: "https://cdn.decorilla.com/images/927w/894ad83d-ce06-439a-86b1-7d06de949f2a/Boutique-Hotel-Bedroom-Bathroom-Mladen-C-3DModel-1.jpg?cv=1")



puts "Creating Reservations..."
20.times do
    Reservation.create(
        check_in: Faker::Date.between(from:Date.today, to: "2023-02-01" ),
        check_out: Faker::Date.between(to: "2023-02-02", from: "2023-03-01" ), 
        user: User.all.sample, 
        room: Room.all.sample)
end

    a1 = Amenitie.create(
        name: "Dining", 
        description: "True culinary immersion is evident with a 10,000 square-feet Restaurant and Rooftop cocktail lounge complete with elegant indoor and outdoor bar space overlooking the Pacific Ocean.", 
        image_url: "https://static-new.lhw.com/HotelImages/Final/LW2766/lw2766_139953189_790x490.jpg", 
        hotel: h, 
        icon_img:"https://www.hilton.com/modules/assets/svgs/amenities/dining.svg")
    a2 = Amenitie.create(
        name: "Meeting & Events", 
        description: "The hotel plays host to a 3,245 square-feet of multi-use suite space available for private social functions and corporate events.", 
        image_url: "https://liveattheteak.com/assets/images/cache/4601-amesbury-dr-dallas-tx-75206-High-Res-1-e77f48224bb2c72d74aff01767e7c922.jpg", 
        hotel: h, 
        icon_img:"https://www.hilton.com/modules/assets/svgs/amenities/meetingRooms.svg")
    a3 = Amenitie.create(
        name: "Wellness", 
        description: "A rejuvenating 2,800 square-feet facility featuring a state-of-the art fitness center with Technogym equipment.", 
        image_url: "https://liveattheteak.com/assets/images/cache/4601-amesbury-dr-dallas-tx-75206-High-Res-1-e77f48224bb2c72d74aff01767e7c922.jpg", 
        hotel: h, 
        icon_img:"https://www.hilton.com/modules/assets/svgs/amenities/fitnessCenter.svg")


puts "Seeding Complete..."

