class CitiesController < ApplicationController
  def index
    # display all cities on index page
    @cities = City.all

  end

  def show
    @city = City.find(params[:id])
  end
end
