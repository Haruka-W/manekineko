class PostsController < ApplicationController

  def new
  	@post = Post.new
  end

  def index
  	@post = Post.all
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
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :sex, :age, :type, :image)
  end

end
