require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "should not save booking without starts_at" do
    booking = Booking.new(starts_at: nil, ends_at: DateTime.now + 1.day)
    assert booking.invalid?
    assert booking.errors[:starts_at].any?, "Allowed saving the booking without a starts_at"
  end

  test "should not save booking without ends_at" do
    booking = Booking.new(starts_at: DateTime.now + 1.day, ends_at: nil)
    assert booking.invalid?
    assert booking.errors[:ends_at].any?, "Allowed saving the booking without an ends_at"
  end

  test "should not save if starts_at before now" do
    booking = Booking.new(starts_at: DateTime.now - 1.day, ends_at: DateTime.now + 1.day)
    assert booking.invalid?
    assert booking.errors[:starts_at].any?, "Allowed saving the booking with a starts_at before now"
  end

  test "should not save if ends_at before starts_at" do
    start_time = DateTime.now + 1.day
    end_time = start_time - 1.day
    booking = Booking.new(starts_at: start_time, ends_at: end_time)
    assert booking.invalid?
    assert booking.errors[:ends_at].any?, "Allowed saving the booking with an ends_at before starts_at"
  end
end
