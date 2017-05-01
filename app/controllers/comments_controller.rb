class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    city = City.find(params[:city_id])
    post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    # respond_to do |format|
    #   if @comment.save
        redirect_to city_post_path(city, post)
      # end
      #   format.html { redirect_to @post, notice: 'Comment was successfully created.' }
      #   format.json { render :show, status: :created, location: @comment }
      # else
      #   format.html { render :new }
      #   format.json { render json: @comment.errors, status: :unprocessable_entity }
      # end
    
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @city = City.find(params[:city_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to city_post_path(@city, @post)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      @post = Post.find(params[:post_id])
      params.require(:comment).permit(:content)
      .merge(user_id: current_user.id, post_id: params[:post_id])

    end
end
