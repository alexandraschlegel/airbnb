
puts "Cleaning db"
Booking.destroy_all
Flat.destroy_all
User.destroy_all


# puts "Creating users"
elizabeth = User.create!(email: "elizabeth@hermajesty.com", password: 123456)
# nemo = User.create!(email: "nemo@whereami.com", password:1234567, photo: 'nemo.jpg')
# sissi = User.create!(email: "sissi@wannabeaprincess.com",password: 12345678)
# flamingo = User.create!(email:"flamingo@pinkitwasloveatfirstsight.com",password:123456789, photo:'flamingo.jpg')
# donald = User.create!(email:"donald@simplythebest.com",password:12345678910, photo:'donald')
# wladimir = User.create!(email:"wladimir@iheartponies.com",password:12345678910, photo:'wladimir.png')
# cleopatra = User.create!(email:"cleopatra@comingatcha.com",password:12345678910, photo:'cleopatra.jpg' )
# monalisa = User.create!(email:"monalisa@louvre.com",password:12345678910)


# puts "Creating flats"
flat1 = Flat.create!(name:'Taj Mahal',
  address: 'Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India',
  rating: 5,
  price: 400,
  capacity: 450,
  facilities:'Tea room, Outdoor swimming pool',
  user: elizabeth,
)

upload = Cloudinary::Uploader.upload("app/assets/images/BuckinghamPalace.jpg")
file = URI.open(upload["url"])
flat1.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

flat2 = Flat.create!(name:'Buckingham Palace',
  address: 'Westminster, London SW1A 1AA',
  rating: 4,
  price: 190000,
  capacity: 1000,
  facilities: 'Ball room, Tea salon, Butler Service',
  user: elizabeth)

upload = Cloudinary::Uploader.upload("app/assets/images/buddah.jpeg")
file = URI.open(upload["url"])
flat2.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])
# flat3 = Flat.create!(name:'The White House',
#   address: '1600 Pennsylvania Ave NW, Washington, DC 20500, United States',
#   rating: 3,
#   price: 210000,
#   capacity: 1200,
#   facilities:'Conference room, Helipad, Panic Room',
#   user: donald,
#   image: 'whitehouse.jpg')

# flat4 = Flat.create!(name:'Schloss Neuschwanstein',
#   address: 'Neuschwansteinstraße 20, 87645 Schwangau, Germany',
#   rating: 3,
#   price: 10200,
#   capacity: 1000,
#   facilities:'Ball Room, Tourture Chamber',
#   user:sissi,
#   image: 'SchlossNeuschwanstein.jpg')

# flat5 = Flat.create!(name:'Great Barrier Reef',
#   address: '24 The Cove Rd, Airlie Beach QLD 4802, Australia',
#   rating: 4,
#   price: 40000,
#   capacity: 1000,
#   facilities:'Free snorkel equipment included',
#   user:nemo,
#   image: 'greatbarrierreef.jpg')

# flat6 = Flat.create!(name:'Pentagon',
#   address: 'Washington, DC 22202, United States',
#   rating: 1,
#   price: 30000,
#   capacity: 9000,
#   facilities:'Panic room, Secret Tunnel, Professional security system',
#   user:donald,
#   image: 'The_Pentagon_cropped_square.png')

# flat7 = Flat.create!(name:'The great wall of China',
#   address:'Huairou District, China',
#   rating: 2,
#   price: 1200,
#   capacity: 1000,
#   facilities:'Wonderful walking track',
#   user:wladimir,
#   image: 'greatwallofchina.jpg')

# flat8 = Flat.create!(name:'Moscow Kremlin',
#   address: 'Moscow, Russia, 103073',
#   rating: 3,
#   price: 1200,
#   capacity: 1000,
#   facilities:'Secret Tunnel, Spiral Staircase, Magic Room',
#   user:wladimir,
#   image: 'kremlin.jpg')

# flat9 = Flat.create!(name:'Great Pyramid of Giza',
#   address: 'Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate, Egypt',
#   rating: 3,
#   price: 500000,
#   capacity: 1000,
#   facilities:'Mummies, Natural Air Conditioning',
#   user:cleopatra,
#   image: 'pyramids.jpg')

# flat10 = Flat.create!(name:'Bolivian Sea Desert',
#   address: 'Daniel Campos Province',
#   rating: 3,
#   price: 1200,
#   capacity: 1000,
#   facilities: 'Flamingos, Fresh and Saltwater Pool, 365 Days of Sun, Spacious Outdoor space',
#   user:flamingo,
#   image: 'saltdesert.jpg')

# flat11 = Flat.create!(name:'Maccu Piccu',
#   address:'08680, Peru',
#   rating: 4,
#   price: 1200,
#   capacity: 1000,
#   facilities:'Wonderful walking track for the keen hiker, Spectular view, Back to Nature Experience',
#   user:flamingo,
#   image: 'macchupiccu.jpg')

# flat12 = Flat.create!(name:'Eiffel Tower',
#   address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France',
#   rating: 2,
#   price: 1200,
#   capacity: 1000,
#   facilities:'Airy, Great City Views',
#   user:monalisa,
#   image: 'eiffeltower.jpg')

# flat13 = Flat.create!(name:'Statue of Liberty',
#   address: 'New York, NY 10004, United States',
#   rating: 2,
#   price: 1200,
#   capacity: 1000,
#   facilities:'Skyline views',
#   user:donald,
#   image: 'StatueofLiberty.jpg')

# flat14 = Flat.create!(name:'Louvre',
#   address: 'Rue de Rivoli, 75001 Paris, France',
#   rating: 3,
#   price: 1200,
#   capacity: 60000,
#   facilities:'Acclaimed International Art',
#   user:monalisa,
#   image: 'louvre.jpg')

# puts "Creating bookings"
# booking1 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:elizabeth, flat:flat1)
# booking2 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:donald, flat:flat2)
# booking3 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:wladimir, flat:flat3)

