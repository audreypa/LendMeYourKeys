# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
User.destroy_all

#create 2 users
  User.create!(email: "audreypchl@lewagon.com", password: "lovelewagon")
  User.create!(email: "elsablanc@lewagon.com", password: "lovelewagon")

#create 6 cars
  Car.create!(brand: "Peugeot", model: "206", address: "78 rue du Rocher 75008 Paris", price_per_day: 100, user_id: User.first.id)
  Car.create!(brand: "Renault", model: "Clio", address: "545 route des ménafauries 07800 Charmes sur Rhône", price_per_day: 80, user_id: User.second.id)
  Car.create!(brand: "Citroen", model: "C3", address: "78 rue du Rocher 75008 Paris", price_per_day: 90, user_id: User.first.id)
  Car.create!(brand: "Ferrari", model: "296 GTB", address: "80 Avenue Kleber 75016 Paris", price_per_day: 200, user_id: User.second.id)
  Car.create!(brand: "Audi", model: "A3", address: "79 rue du Rocher 75008 Paris", price_per_day: 120, user_id: User.first.id)
  Car.create!(brand: "BMW", model: "Série 1", address: "13 impasse Pasteur 07300 Tournons sur Rhône ", price_per_day: 150, user_id: User.second.id)

  Booking.create!(starts_at: "2023-07-20", ends_at: "2023-07-20", user_id: User.first.id, car_id: 2)
