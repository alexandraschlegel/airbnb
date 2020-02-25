
puts "Cleaning db"
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users"
elizabeth = User.create!(email: "elizabeth@gmail.com", password: 123456)
henry = User.create!(email: "henry's@gmail.com", password:1234567)
charles = User.create!(email: "emperorpalpatine@gmail.com",password: 12345678)
prometheus = User.create!(email:"10stepsaheadofyou@gmail.com",password:123456789)
wilder = User.create!(email:"tookaloss@gmail.com",password:12345678910)
puts "Creating flats"
flat1 = Flat.create!(address:'The Royal Albert Hall',rating:10,price:400,capacity:450,facilities:'has a shower, has a bathroom,nothing too spectacular!', user:elizabeth)
flat2 = Flat.create!(address:'Kensington Palace',rating:6,price:500000,capacity:800,facilities:'a underground basement to do some sketchy stuff', user:henry)
flat3 = Flat.create!(address:'Windsor Castle',rating:8,price:1200,capacity:1000,facilities:'cells to hold prisoners,large swimming pool,large kitchen', user:charles)
flat3 = Flat.create!(address:'Buckingham Palace',rating:8,price:190000,capacity:1000,facilities:'salon,large swimming pool,large kitchen', user:charles)
flat4 = Flat.create!(address:'The White House',rating:8,price:90000,capacity:1000,facilities:'room full of past presidents,large swimming pool', user:charles)
flat5 = Flat.create!(address:'Schloss Neuschwanstein',rating:8,price:10200,capacity:1000,facilities:'cells to hold prisoners,large swimming pool',user:charles)
flat6 = Flat.create!(address:'Taj Mahal',rating:8,price:1200,capacity:100000,facilities:'large swimming pool, grounds to walk on', user:charles)
flat7 = Flat.create!(address:'Petersdom',rating:8,price:40000,capacity:1000,facilities:'Aquarium bed,', user:charles)
flat8 = Flat.create!(address:'Pentagon',rating:8,price:30000,capacity:9000,facilities:'indoor pool,outdoor pool', user:charles)
flat9 = Flat.create!(address:'The leaning tower of Pizza',rating:8,price:1200,capacity:70000,facilities:'swing set table, inhouse pizza chef', user:charles)
flat10 = Flat.create!(address:'The great wall of China, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'spiral staircase,large swimming pool', user:charles)
flat11 = Flat.create!(address:'Louvre, 5585 Unternberg',rating:8,price:1200,capacity:60000,facilities:'cat tunnel, Aquarium bed', user:henry)
flat12 = Flat.create!(address:'Moscow Kremlin, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'secret tunnel, spiral staircase', user:prometheus)
flat13 = Flat.create!(address:'Great Pyramid of Giza, 5585 Unternberg',rating:8,price:500000,capacity:1000,facilities:'spiral staircase,Aquarium bed', user:charles)
flat14 = Flat.create!(address:'Sydney Opera House, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'backyard cinema, secret tunnel', user:charles)
flat15 = Flat.create!(address:'Bolivian Sea Desert, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'flamingos, salt-water pool,', user:wilder)
flat16 = Flat.create!(address:'Maccu Piccu, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'vertical herb garden, secret tunnel', user:charles)
flat17 = Flat.create!(address:'Lake Como, 5585 Unternberg',rating:8,price:1200,capacity:1000,facilities:'backyard beach, secret-garden', user:prometheus)
flat18 = Flat.create!(address:'Lake titicaca, 5585 Unternberg',rating:8,price:400000,capacity:1000,facilities:'door of swatches,swing set table', user:wilder)
flat19 = Flat.create!(address:'Eiffel Tower, 5585 Unternberg',rating:2,price:1200,capacity:1000,facilities:'ice cave,fire-pit table', user:wilder)
flat20 = Flat.create!(address:'Statue of Liberty, 5585 Unternberg',rating:2,price:1200,capacity:1000,facilities:'indoor-slide, ping-pong table', user:prometheus)
puts "Creating bookings"
booking1 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Elizabeth, flat:flat1)
booking2 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Henry, flat:flat2)
booking3 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:Charles, flat:flat3)




