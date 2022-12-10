class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @goat = @booking.goat_id
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = Booking.find(params[:booking_id])
    @goat = @review.booking.goat
    @review.goat_id = @goat.id
    if @review.save
      redirect_to goat_path(@goat)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
