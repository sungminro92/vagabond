class CitiesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # display all cities on index page
    @cities = City.all

  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
    @ordered_posts = @posts.order( 'updated_at DESC')
  end


end
