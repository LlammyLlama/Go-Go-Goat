class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @goat = Goat.find(params[:goat_id])
    @review.user = current_user
    @review.goat = @goat
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
