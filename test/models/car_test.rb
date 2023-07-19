require "test_helper"

class CarTest < ActiveSupport::TestCase
  test "should not save car without brand" do
    car = Car.new(brand: " ", model: "Peugeot", address: "Paris", price_per_day: 100)
    assert_not car.save, "Saved the car without a brand"
  end

  test "should not save car without model" do
    car = Car.new(brand: "206", model: " ", address: "Paris", price_per_day: 100)
    assert_not car.save, "Saved the car without a model"
  end

  test "should not save car without address" do
    car = Car.new(brand: "206", model: "Peugeot", address: " ", price_per_day: 100)
    assert_not car.save, "Saved the car without a address"
  end

  test "should not save car with price_per_day less than 0" do
    car = Car.new(brand: "206", model: "Peugeot", address: "Paris", price_per_day: -1)
    assert_not car.save, "Saved the car with a price_per_day less than 0"
  end

end
