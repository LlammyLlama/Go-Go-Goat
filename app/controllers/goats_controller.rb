class GoatsController < ApplicationController
  def index
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :age, :services, :rate_per_day, :appetite, :description, :image)
  end
end
