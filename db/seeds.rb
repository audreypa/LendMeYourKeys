require "open-uri"

Car.destroy_all
User.destroy_all

#create 2 users
  User.create!(email: "audreypchl@lewagon.com", password: "lovelewagon")
  User.create!(email: "elsablanc@lewagon.com", password: "lovelewagon")

#create 6 cars
  car =Car.new(brand: "Peugeot", model: "206", address: "78 rue du Rocher 75008 Paris", price_per_day: 100, user_id: User.first.id, year_of_production: 2000)
  car.save!
  car = Car.new(brand: "Renault", model: "Clio", address: "545 route des ménafauries 07800 Charmes sur Rhône", price_per_day: 80, user_id: User.second.id, year_of_production: 2010)
  car.save!
  car = Car.new(brand: "Citroen", model: "C3", address: "78 rue du Rocher 75008 Paris", price_per_day: 90, user_id: User.first.id, year_of_production: 2013)
  car.save!
  car = Car.new(brand: "Ferrari", model: "296 GTB", address: "80 Avenue Kleber 75016 Paris", price_per_day: 200, user_id: User.second.id, year_of_production: 2020)
  car.save!
  car = Car.new(brand: "Audi", model: "A3", address: "79 rue du Rocher 75008 Paris", price_per_day: 120, user_id: User.first.id, year_of_production: 2014)
  car.save!
  car = Car.new(brand: "BMW", model: "Série 1", address: "13 impasse Pasteur 07300 Tournons sur Rhône ", price_per_day: 150, user_id: User.second.id, year_of_production: 2003)
  car.save!
