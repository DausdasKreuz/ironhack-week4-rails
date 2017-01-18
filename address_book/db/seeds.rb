# examples
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..10).each do |i|
#   Contact.create!(name: "Name #{i}", address: "Address #{i}", phone: "Phone #{i}", email: "email #{i}")
# end

contacts = Contact.create!([
  {name: "Dani", address: "street Stunt, num 1, Madrid", phone: "656555132", email: "dani@ironhack.com"},
  {name: "Miguel", address: "street Figure, num 2, Madrid", phone: "656555123", email: "miguel@ironhack.com"},
  {name: "Mariano", address: "street Awesome, num 3, Madrid", phone: "656555145", email: "mariano@ironhack.com"},
  {name: "Carlos", address: "street Kit, num 4, Madrid", phone: "656555654", email: "carlos@ironhack.com"},
  {name: "Belen", address: "street A-team, num 5, Madrid", phone: "656555789", email: "belen@ironhack.com"},
  {name: "Felippa", address: "street Game of Thrones, num 6, Madrid", phone: "656555963", email: "felippa@ironhack.com"},
  {name: "Santi", address: "street Castellana, num 7, Madrid", phone: "656555852", email: "santi@ironhack.com"},
  {name: "Daichi", address: "street Colon, num 8, Madrid", phone: "656555159", email: "daichi@ironhack.com"},
  {name: "Diana", address: "street terminator, num 9, Madrid", phone: "656555357", email: "diana@ironhack.com"},
  ])
