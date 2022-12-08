class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @goat = @booking.goat_id
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = @review.user.bookings.last
    @goat = @review.booking.goat
    if @review.save
      redirect_to goat_path(@goat)
    else
      render 'goats/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
