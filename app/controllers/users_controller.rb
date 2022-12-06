class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @goats = @user.goats
  end

end
