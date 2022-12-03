class BookingsController < ApplicationController
  def index
<<<<<<< HEAD
    @bookinbs = Booking.all
  end

  def new
    @booking = Bookings.new
=======
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @goat = Goat.find(params[:goat_id])
>>>>>>> c4c8813ed7e97a01675d704e7b4c78043895df34
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
<<<<<<< HEAD
    if @booking.save
      redirect_to root_path # need to take to dashboard
    else
      render :new, status: :unprocessable_entity

=======
    @booking.goat = Goat.find(params[:goat_id])
    @booking.status = "pending"
    if @booking.save
      redirect_to root_path # need to change this to the dashboard path
    else
      render :new, status: :unprocessable_entity
>>>>>>> c4c8813ed7e97a01675d704e7b4c78043895df34
    end
  end

  private

<<<<<<< HEAD
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_goat
    @goat
  end

  def booking_params
    params.require(:booking).permit(:status, :rental_start_date, :rental_end_date, :service)
=======
  def booking_params
    params.require(:booking).permit(:rental_start_date, :rental_end_date)
>>>>>>> c4c8813ed7e97a01675d704e7b4c78043895df34
  end
end
