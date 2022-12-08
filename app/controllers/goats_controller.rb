class GoatsController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @goat = Goat.find(params[:id])
    @review = Review.new
  end

  def new
    @user = current_user
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    if @goat.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :age, :services, :rate_per_day, :appetite, :description, :image, :photo)
  end
end
