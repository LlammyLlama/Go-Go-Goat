class GoatsController < ApplicationController
  before_action :set_user, only: [:new, :create]

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

  def set_user
    @user = User.find(params[:user_id])
  end

  def goat_params
    params.require(:goat).permit(:name, :age, :services, :rate_per_day, :appetite, :description, :image, :user_id)
  end
end
