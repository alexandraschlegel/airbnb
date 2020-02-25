# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning db"
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users"
user1 = User.create!(email: "test1@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "test2@gmail.com", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "test3@gmail.com", password: "123456", password_confirmation: "123456")
puts "Creating flats"
flat1 = Flat.create!(address:'London,Bodiam,Robertsbridge TN32 5UA',rating:2,price:400,capacity:450,facilities:'has a shower, has a bathroom,nothing too spectacular!', user:user1)
flat2 = Flat.create!(address:'Paris venue de Paris, 94300 Vincennes,France',rating:6,price:700,capacity:800,facilities:'a underground basement to  do some sketchy stuff', user:user2)
flat3 = Flat.create!(address:'Austria 13, Moosham, 5585 Unternberg,',rating:8,price:1200,capacity:1000,facilities:'cells to hold prisoners,large swimming pool,large kitchen', user:user3)
puts "Creating bookings"
booking1 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:user1, flat:flat1)
booking2 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:user2, flat:flat2)
booking3 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:user3, flat:flat3)



