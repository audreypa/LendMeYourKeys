require "test_helper"

class CarTest < ActiveSupport::TestCase
  test "should not save car without brand" do
    car = Car.new(brand: nil, model: "Peugeot", address: "Paris", price_per_day: 100)
    assert car.invalid?
    assert car.errors[:brand].any?, "Allowed saving the car without a brand"
  end

  test "should not save car without model" do
    car = Car.new(brand: "206", model: nil, address: "Paris", price_per_day: 100)
    assert car.invalid?
    assert car.errors[:model].any?, "Allowed saving the car without a model"
  end

  test "should not save car without address" do
    car = Car.new(brand: "206", model: "Peugeot", address: nil, price_per_day: 100)
    assert car.invalid?
    assert car.errors[:address].any?, "Allowed saving the car without an address"
  end

  test "should not save car with price_per_day less than 0" do
    car = Car.new(brand: "206", model: "Peugeot", address: "Paris", price_per_day: -1)
    assert car.invalid?
    assert car.errors[:price_per_day].any?, "Allowed saving the car with a price_per_day less than 0"
  end
end
