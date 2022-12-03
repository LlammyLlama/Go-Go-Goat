class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.select(params[:goat_id] == current_user)
  end

end
