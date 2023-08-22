require "open-uri"

Car.destroy_all
User.destroy_all

#create 2 users
  User.create!(email: "audreypchl@lewagon.com", password: "lovelewagon")
  User.create!(email: "elsablanc@lewagon.com", password: "lovelewagon")

#create 6 cars
  car =Car.new(brand: "Peugeot", model: "206", address: "78 rue du Rocher 75008 Paris", price_per_day: 100, user_id: User.first.id, year_of_production: 2000)
  file = URI.open("https://images.unsplash.com/photo-1663075147136-0dd4eea46ffb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGV1Z2VvdCUyMDIwNnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
  car.photo.attach(io: file, filename: "peugeot206.png", content_type: "image/png")
  car.save!
  car = Car.new(brand: "Renault", model: "Clio", address: "545 route des ménafauries 07800 Charmes sur Rhône", price_per_day: 80, user_id: User.second.id, year_of_production: 2010)
  file = URI.open("https://images.unsplash.com/photo-1606052290258-a9738556540c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
  car.photo.attach(io: file, filename: "renaultclio.png", content_type: "image/png")
  car.save!
  car = Car.new(brand: "Citroen", model: "C3", address: "78 rue du Rocher 75008 Paris", price_per_day: 90, user_id: User.first.id, year_of_production: 2013)
  file = URI.open("https://images.unsplash.com/photo-1609030429269-ca5b7a409310?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0cm9lbiUyMGMzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
  car.photo.attach(io: file, filename: "citroenc3.png", content_type: "image/png")
  car.save!
  car = Car.new(brand: "Ferrari", model: "296 GTB", address: "80 Avenue Kleber 75016 Paris", price_per_day: 200, user_id: User.second.id, year_of_production: 2020)
  file = URI.open("https://images.unsplash.com/photo-1629323487410-c1abe62ea9ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmVyYXJyaXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
  car.photo.attach(io: file, filename: "ferrari296.png", content_type: "image/png")
  car.save!
  car = Car.new(brand: "Audi", model: "A3", address: "79 rue du Rocher 75008 Paris", price_per_day: 120, user_id: User.first.id, year_of_production: 2014)
  file = URI.open("https://images.unsplash.com/photo-1541800658-6599fffd81c1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXVkaSUyMEEzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
  car.photo.attach(io: file, filename: "audiA3.png", content_type: "image/png")
  car.save!
  car = Car.new(brand: "BMW", model: "Série 1", address: "13 impasse Pasteur 07300 Tournons sur Rhône ", price_per_day: 150, user_id: User.second.id, year_of_production: 2003)
  file = URI.open("https://images.unsplash.com/photo-1523983388277-336a66bf9bcd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJtdyUyMHMzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
  car.photo.attach(io: file, filename: "bmws1.png", content_type: "image/png")
  car.save!
