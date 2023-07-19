require "test_helper"

class CarTest < ActiveSupport::TestCase
  test "should not save car without brand" do
    car = Car.new
    assert_not car.save, "Saved the car without a brand"
  end

  test "should not save car without model" do
    car = Car.new
    assert_not car.save, "Saved the car without a model"
  end

  test "should not save car without address" do
    car = Car.new
    assert_not car.save, "Saved the car without a address"
  end

  test "should not save car with price less than 0" do
    car = Car.new
    assert_not car.save, "Saved the car with a price less than 0"
  end
end
