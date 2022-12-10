class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy approve deny]

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
    @booking.rental_start_date = params[:booking][:rental_start_date].split(" to ")[0]
    @booking.rental_end_date = params[:booking][:rental_start_date].split(" to ")[1]
    @booking.user = current_user
    @booking.goat = Goat.find(params[:goat_id])
    @booking.status = "Pending"
    if @booking.save
      redirect_to dashboard_path(@booking.user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def approve
    @booking.update(status: "Approved")
  end

  def deny
    @booking.update(status: "Denied")
  end

  def edit
    @goat = Goat.find(params[:goat_id])
  end

  def update
    @booking.rental_start_date = params[:booking][:rental_start_date].split(" to ")[0]
    @booking.rental_end_date = params[:booking][:rental_start_date].split(" to ")[1]

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
    params.require(:booking).permit(:rental_start_date)
  end
end
