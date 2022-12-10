class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]

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
      redirect_to dashboard_path(@booking.user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @goat = Goat.find(params[:goat_id])
    @booking.user = current_user
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:rental_start_date, :rental_end_date)
  end
end
