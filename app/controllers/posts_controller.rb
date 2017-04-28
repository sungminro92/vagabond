class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @city = @post.city
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
  end

  def create
    # @post = Post.new(post_params)
  end

  def edit
    # post = Post.create(post_params)
    # city = post.city
    # redirect_to city_post_path(city, post)
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    city_id = City.find(params[:city_id])
    redirect_to '/cities/#{city_id}'
  end

  private
  def post_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
  end

end
