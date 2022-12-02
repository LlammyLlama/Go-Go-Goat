class GoatsController < ApplicationController
  before_action :set_goat, only: [:show]
  def index; end

  def show; end

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

  def set_goat
    @goat = Goat.find(params[:id])
  end

  def goat_params
    params.require(:goat).permit(:name, :age, :services, :rate_per_day, :appetite, :description, :image)
  end
end
