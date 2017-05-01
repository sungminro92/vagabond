class UsersController < ApplicationController
  # Layout index
  def index
  
  end

  # User profile
  def show
    @user = current_user
    @user_posts =  @user.posts
  end

  # About us page
  def about
  
  end
end
