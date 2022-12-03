class BookingsController < ApplicationController
  def index
    @bookinbs = Booking.all
  end

  def new
    @booking = Bookings.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to root_path # need to take to dashboard
    else
      render :new, status: :unprocessable_entity

    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_goat
    @goat
  end

  def booking_params
    params.require(:booking).permit(:status, :rental_start_date, :rental_end_date, :service)
  end
end
