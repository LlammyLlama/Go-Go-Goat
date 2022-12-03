class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.all
  end

  def new
    @user = current_user
    @booking = Booking.new
    @goat = Goat.find(params[:goat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.goat = Goat.find(params[:goat_id])
    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path(@booking) # need to change this to the dashboard path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:rental_start_date, :rental_end_date)
  end
end
