# PURGE USERS
puts "\n=========> purging USERS"
User.destroy_all
puts "=====> done!"
puts "=> Re-seeding Users"
# Create USER TABLE Seeds

u1 = User.create!({
  username: "DogLuva",
  email: "dog@luva.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u2 = User.create!({
  username: "CatLuva",
  email: "cat@luva.com",
  password: "password",
  password_confirmation: "password",
  gender: "female"
  })

u3 = User.create!({
  username: "IguanaLuva",
  email: "iguana@luva.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u4 = User.create!({
  username: "pickUpPoop",
  email: "responsibleowner@dog.com",
  password: "password",
  password_confirmation: "password",
  gender: "female"
  })

u5 = User.create!({
  username: "kittyLitter",
  email: "catbox@litter.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u6 = User.create!({
  username: "HootOot",
  email: "bigeyes@owl.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u7 = User.create!({
  username: "LlamaLloveMme",
  email: "spittake@llama.com",
  password: "password",
  password_confirmation: "password",
  gender: "female"
  })

u8 = User.create!({
  username: "Tarantulino",
  email: "tarantulino@8eyes.com",
  password: "password",
  password_confirmation: "password",
  gender: "female"
  })

u9 = User.create!({
  username: "SnippedDogg",
  email: "d-o-double-g@snipp.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u10 = User.create!({
  username: "SlowToBegin",
  email: "slother@merp.com",
  password: "password",
  password_confirmation: "password",
  gender: "male"
  })

u11 = User.create!({
  username: "Shellover",
  email: "tortle@shell.com",
  password: "password",
  password_confirmation: "password",
  gender: "female"
  })

puts "<========== Users Complete!"
# PURGE PETS
puts "\n=========> purging PETS"
Pets.destroy_all
puts "=====> done!"
puts "=> Re-seeding Pets"
# Create PETS TABLE Seeds

Pet.create!({
  name: "Reginald",
  type: "Dog",
  breed: "Bullshit",
  age: 3,
  description: "A wily little scamp with a love for sniffing butts",
  user_id: u1.id,
  profile_picture: "https://s3.amazonaws.com/pet-uploads.adoptapet.com/8/6/e/61500157.jpg"
  })

Pet.create!({
  name: "Colonel Buttons III, Esquire",
  type: "Cat",
  breed: "Persian",
  age: 8,
  description: "A most majestic military commander who has served their country with distinction",
  user_id: u2.id,
  profile_picture: "http://www.catbreedslist.com/uploads/allimg/cat-pictures/Persian-Cat-2.jpg"
  })

Pet.create!({
  name: "Ignatz",
  type: "Iguana",
  breed: "Axanthic",
  age: 13,
  description: "Don't let his scaley hide fool you, he's a softy with a big heart",
  user_id: u3.id,
  profile_picture: "http://www.clubfauna.com/wp-content/uploads/2014/03/Axanthic-or-Blue-Iguana.jpg"
  })

Pet.create!({
  name: "Mortimer",
  type: "Dog",
  breed: "Leonberger",
  age: 6,
  description: "He may be the size of a small horse, but don't try riding him!",
  user_id: u4.id,
  profile_picture: "http://www.101dogbreeds.com/wp-content/uploads/2015/03/Leonberger-Dog-Images.jpg"
  })

Pet.create!({
  name: "The Dutchess Marigold",
  type: "Cat",
  breed: "Exotic Shorthair Munchkin",
  age: 2,
  description: "Her Majesty is eclipsed only by her love for fine tuna",
  user_id: u5.id,
  profile_picture: "https://s-media-cache-ak0.pinimg.com/736x/69/24/2c/69242c315692a58ec88f117055bb2d5f.jpg"
  })

Pet.create!({
  name: "NightEyes",
  type: "Bird",
  breed: "Northern Saw-Whet Owl",
  age: 2,
  description: "Eyes with a heart to match",
  user_id: u6.id,
  profile_picture: "http://farm4.staticflickr.com/3428/4003273528_d78e05f042_b.jpg"
  })

Pet.create!({
  name: "Llester",
  type: "Camelid",
  breed: "Llama",
  age: 9,
  description: "A gentleman in the field, and a stud in the barn",
  user_id: u7.id,
  profile_picture: "http://static.tumblr.com/eb425e2c1e76973ca009059689a67393/gtdnkhg/oUhmf7ptp/tumblr_static_hipster-llama-l.jpg"
  })

Pet.create!({
  name: "Quentin",
  type: "Arachnid",
  breed: "Mexican Red-Knee Tarantula",
  age: 3,
  description: "A barely persceptible touch, and hair soft as a gentle evenings breeze",
  user_id: u8.id,
  profile_picture: "http://www.tarantulaheaven.com/wp-content/uploads/2015/06/7670adc2-698f-4b5d-934d-973a77395d56.jpg"
  })

Pet.create!({
  name: "Moopy",
  type: "Dog",
  breed: "Chinese Crested",
  age: 8,
  description: "He's an inbred idiot... but he's MY inbred idiot!",
  user_id: u9.id,
  profile_picture: "http://www.canisite.com/wp-content/uploads/ch/chinese-tenugliestanimalsont-breed.jpg"
  })

Pet.create!({
  name: "RoadRunner",
  type: "Sloth",
  breed: "Pygmy Three-Toed",
  age: 2,
  description: "Don't mind the colony of insects bred in his hair, it just shows how supportive he is ;)",
  user_id: u10.id,
  profile_picture: "https://gifts.worldwildlife.org/gift-center/Images/large-species-photo/large-Three-toed-Sloth-photo.jpg"
  })

Pet.create!({
  name: "Sonic",
  type: "Tortoise",
  breed: "Leopard",
  age: 18,
  description: "A hard outer shell, with a soft gooey centre...",
  user_id: u11.id,
  profile_picture: "https://i.ytimg.com/vi/BZnHsj3Y0Fk/maxresdefault.jpg"
  })

puts "<========== Pets Complete!"
