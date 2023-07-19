require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "should not save booking without starts_at" do
    booking = Booking.new(starts_at: " ", ends_at: DateTime.now + 1)
    assert_not booking.save, "Saved the booking without a starts_at"
  end

  test "should not save booking without ends_at" do
    booking = Booking.new(starts_at: DateTime.now, ends_at: " ")
    assert_not booking.save, "Saved the booking without a ends_at"
  end

  test "should not save if starts_at before now" do
    booking = Booking.new(starts_at: DateTime.now - 1, ends_at: DateTime.now + 1)
    assert_not booking.save, "Saved the booking with a starts_at before now"
  end

  test "should not save if ends_at before starts_at" do
    booking = Booking.new(starts_at: DateTime.now + 1, ends_at: DateTime.now)
    assert_not booking.save, "Saved the booking with a ends_at before starts_at"
  end
end
