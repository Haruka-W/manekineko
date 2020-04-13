class PostsController < ApplicationController

  def new
  	@post = Post.new
  end

  def index
  end

  def show
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
