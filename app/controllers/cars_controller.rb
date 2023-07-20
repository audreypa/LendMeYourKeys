class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new
    @marker = { lat: @car.geocode[0],
                lng: @car.geocode[1],
                info_window_html: render_to_string(partial: "info_window", locals: { car: @car })
    }
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
