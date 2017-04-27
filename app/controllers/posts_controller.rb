class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def edit
  end

  def update
  end

  def destroy
    @post.destroy
    redirect_to '/'
  end

  # private
  #   city_id = @post.city_id

end
