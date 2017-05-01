class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @user_posts =  @user.posts
  end

  def edit
  end

  def update
  end

  def contact
  end
end
