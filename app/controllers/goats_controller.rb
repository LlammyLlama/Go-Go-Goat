class GoatsController < ApplicationController
  def index
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
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

  private

  def goat_params
    params.require(:goat).permit(:name, :age, :services, :rate_per_day, :appetite, :description, :image)
  end
end
