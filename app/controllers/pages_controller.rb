class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @goats = Goat.all
  end
def show

end

end
