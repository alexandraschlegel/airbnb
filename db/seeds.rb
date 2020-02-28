
puts "Cleaning db"
Booking.destroy_all
Flat.destroy_all
User.destroy_all


# puts "Creating users"
elizabeth = User.create!(email: "elizabeth@hermajesty.com", password: 123456)
upload = Cloudinary::Uploader.upload("app/assets/images/Queeny.png")
file = URI.open(upload["url"])
elizabeth.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

nemo = User.create!(email: "nemo@whereami.com", password:1234567)
upload = Cloudinary::Uploader.upload("app/assets/images/nemo.jpg")
file = URI.open(upload["url"])
nemo.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

sissi = User.create!(email: "sissi@wannabeaprincess.com",password: 12345678)
upload = Cloudinary::Uploader.upload("app/assets/images/Sissi.png")
file = URI.open(upload["url"])
sissi.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

flamingo = User.create!(email:"flamingo@pinkitwasloveatfirstsight.com",password:123456789)
upload = Cloudinary::Uploader.upload("app/assets/images/flamingo.jpg")
file = URI.open(upload["url"])
flamingo.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

donald = User.create!(email:"donald@simplythebest.com",password:12345678910)
upload = Cloudinary::Uploader.upload("app/assets/images/donald.png")
file = URI.open(upload["url"])
donald.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

wladimir = User.create!(email:"wladimir@iheartponies.com",password:12345678910)
upload = Cloudinary::Uploader.upload("app/assets/images/wladimir.png")
file = URI.open(upload["url"])
wladimir.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

cleopatra = User.create!(email:"cleopatra@comingatcha.com",password:12345678910)
upload = Cloudinary::Uploader.upload("app/assets/images/cleopatra.jpg")
file = URI.open(upload["url"])
cleopatra.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

monalisa = User.create!(email:"monalisa@louvre.com",password:12345678910)
upload = Cloudinary::Uploader.upload("app/assets/images/monalisa.jpg")
file = URI.open(upload["url"])
monalisa.photo.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])



# puts "Creating flats"
flat1 = Flat.create!(name:'Taj Mahal',
  address: 'Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India',
  rating: 5,
  price: 400,
  capacity: 450 ,
  facilities:'Tea room, Outdoor swimming pool',
  user: elizabeth,
)

upload = Cloudinary::Uploader.upload("app/assets/images/tajmahal.jpg")
file = URI.open(upload["url"])
flat1.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

flat2 = Flat.create!(name:'Buckingham Palace',
  address: 'Westminster, London SW1A 1AA',
  rating: 4,
  price: 190,
  capacity: 1000,
  facilities: 'Ball room, Tea salon, Butler Service',
  user: elizabeth)

upload = Cloudinary::Uploader.upload("app/assets/images/BuckinghamPalace.jpg")
file = URI.open(upload["url"])
flat2.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

flat3 = Flat.create!(name:'The White House',
  address: '1600 Pennsylvania Ave NW, Washington, DC 20500, United States',
  rating: 3,
  price: 210,
  capacity: 1200,
  facilities:'Conference room, Helipad, Panic Room',
  user: donald)

upload = Cloudinary::Uploader.upload("app/assets/images/whitehouse.jpg")
file = URI.open(upload["url"])
flat3.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

flat4 = Flat.create!(name:'Schloss Neuschwanstein',
  address: 'Neuschwansteinstraße 20, 87645 Schwangau, Germany',
  rating: 3,
  price: 102,
  capacity: 1000,
  facilities:'Ball Room, Tourture Chamber',
  user:sissi)

upload = Cloudinary::Uploader.upload("app/assets/images/SchlossNeuschwanstein.jpg")
file = URI.open(upload["url"])
flat4.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

  flat5 = Flat.create!(name:'Great Barrier Reef',
    address: '24 The Cove Rd, Airlie Beach QLD 4802, Australia',
    rating: 4,
    price: 400,
    capacity: 1000,
    facilities:'Free snorkel equipment included',
    user:nemo)

  upload = Cloudinary::Uploader.upload("app/assets/images/greatbarrierreef.jpg")
  file = URI.open(upload["url"])
  flat5.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


  flat6 = Flat.create!(name:'Pentagon',
    address: 'Washington, DC 22202, United States',
    rating: 1,
    price: 30,
    capacity: 9000,
    facilities:'Panic room, Secret Tunnel, Professional security system',
    user:donald)

  upload = Cloudinary::Uploader.upload("app/assets/images/pentagon.png")
  file = URI.open(upload["url"])
  flat6.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


  flat7 = Flat.create!(name:'The great wall of China',
    address:'Huairou District, China',
    rating: 2,
    price: 120,
    capacity: 3000,
    facilities:'Wonderful walking track',
    user:wladimir)

  upload = Cloudinary::Uploader.upload("app/assets/images/greatwallofchina.jpg")
  file = URI.open(upload["url"])
  flat7.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


  flat8 = Flat.create!(name:'Moscow Kremlin',
    address: 'Moscow, Russia, 103073',
    rating: 3,
    price: 12,
    capacity: 1000,
    facilities:'Secret Tunnel, Spiral Staircase, Magic Room',
    user:wladimir)

  upload = Cloudinary::Uploader.upload("app/assets/images/kremlin.jpg")
  file = URI.open(upload["url"])
  flat8.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])

  flat9 = Flat.create!(name:'Bolivian Sea Desert',
    address: 'Daniel Campos Province',
    rating: 3,
    price: 120,
    capacity:8000,
    facilities: 'Flamingos, Fresh and Saltwater Pool, 365 Days of Sun, Spacious Outdoor space',
    user:flamingo)

  upload = Cloudinary::Uploader.upload("app/assets/images/saltdesert.jpg")
  file = URI.open(upload["url"])
  flat9.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


  flat10 = Flat.create!(name:'Maccu Piccu',
    address:'08680, Peru',
    rating: 4,
    price: 120,
    capacity: 1000,
    facilities:'Wonderful walking track for the keen hiker, Spectular view, Back to Nature Experience',
    user:flamingo)

  upload = Cloudinary::Uploader.upload("app/assets/images/macchupiccu.jpg")
  file = URI.open(upload["url"])
  flat10.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


flat11 = Flat.create!(name:'Eiffel Tower',
  address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France',
  rating: 2,
  price: 120,
  capacity: 1000,
  facilities:'Airy, Great City Views',
  user:monalisa)

upload = Cloudinary::Uploader.upload("app/assets/images/eiffeltower.jpg")
file = URI.open(upload["url"])
flat11.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


flat12 = Flat.create!(name:'Statue of Liberty',
  address: 'New York, NY 10004, United States',
  rating: 2,
  price: 120,
  capacity: 1000,
  facilities:'Skyline views',
  user:donald)

upload = Cloudinary::Uploader.upload("app/assets/images/StatueofLiberty.jpg")
file = URI.open(upload["url"])
flat12.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


flat13 = Flat.create!(name:'Louvre',
  address: 'Rue de Rivoli, 75001 Paris, France',
  rating: 3,
  price: 120,
  capacity: 60000,
  facilities:'Acclaimed International Art',
  user:monalisa)

upload = Cloudinary::Uploader.upload("app/assets/images/louvre.jpg")
file = URI.open(upload["url"])
flat13.image.attach(io: file, filename: upload["original_filename"] + "." + upload["format"], content_type: 'image/' + upload["format"])


# puts "Creating bookings"
# booking1 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:wladimir, flat:flat3)
# booking2 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:wladimir, flat:flat3)
# booking3 = Booking.create!(date_from: Time.now, date_to: Time.now + 3000 , user:wwladimir, flat:flat3)

