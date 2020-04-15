class PostsController < ApplicationController

  def new
  	@post = Post.new
  end

  def index
  	@post = Post.page(params[:page]).reverse_order
  	# 検索前の全件表示時
  	@posts = Post.page(params[:page]).reverse_order
  	@counts = @posts.total_count
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to user_path(current_user.id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :sex, :age, :type, :image)
  end

end
