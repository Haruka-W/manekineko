# frozen_string_literal: true

class PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post_comment = @post.post_comments.new(post_comment_params)
    @post_comment.user_id = current_user.id
    if @post_comment.save
      flash[:success] = 'コメントしました。'
      @post.create_notification_comment!(current_user, @post_comment.id)
    # redirect_to post_path(@post)
    else
      flash[:danger] = 'コメントを入力してください。'
       # @post_comments = PostComment.where(id: @post)
       # redirect_to post_path(@post)
    end
  end

  def destroy
    @post_comment = PostComment.find(params[:post_id])
    @post = @post_comment.post
    @post_comment.destroy
    flash[:success] = 'コメントを削除しました。'
    # redirect_to post_path(@post_comment.post.id)
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
