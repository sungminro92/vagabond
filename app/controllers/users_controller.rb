class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @user_posts =  @user.posts
  end

  def edit
  end

  def update
  end
end
