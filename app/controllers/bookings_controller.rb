# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :set_car

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.car.user == current_user
      flash.now[:alert] = "You cannot book your own car."
      render 'cars/show'
    else
      if @booking.save
        flash[:notice] = "Booking created successfully."
        redirect_to car_path(@car)
      else
        flash.now[:alert] = "Failed to create booking."
        render 'cars/show'
      end
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
