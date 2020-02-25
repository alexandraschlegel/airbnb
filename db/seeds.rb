
puts "Cleaning db"
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users"
elizabeth = User.create!(email: "elizabeth@gmail.com", password: "htebazile", password_confirmation: "htebazile")
henry = User.create!(email: "henry's@gmail.com", password: "pasword", password_confirmation: "pasword")
charles = User.create!(email: "emperorpalpatine@gmail.com", password: "darkside", password_confirmation: "darkside")
puts "Creating flats"
flat1 = Flat.create!(address:'London,Bodiam,Robertsbridge TN32 5UA',rating:2,price:400,capacity:450,facilities:'has a shower, has a bathroom,nothing too spectacular!', user:elizabeth)
flat2 = Flat.create!(address:'Paris venue de Paris, 94300 Vincennes,France',rating:6,price:700,capacity:800,facilities:'a underground basement to  do some sketchy stuff', user:henry)
flat3 = Flat.create!(address:'Austria 13, Moosham, 5585 Unternberg,',rating:8,price:1200,capacity:1000,facilities:'cells to hold prisoners,large swimming pool,large kitchen', user:charles)

puts "Creating bookings"
booking1 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Elizabeth, flat:flat1)
booking2 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Henry, flat:flat2)
booking3 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Charles, flat:flat3)




