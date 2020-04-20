class InviteCommentsController < ApplicationController

	def create
		@invite = Invite.find(params[:invite_id])
    	@invite_comment = @invite.invite_comments.new(invite_comment_params)
    	@invite_comment.user_id = current_user.id
    	if @invite_comment.save
            flash[:success] = "コメントしました。"
    		# redirect_to invite_path(@invite)
    	else
            flash[:danger] = "コメントを入力してください。"
            # @invite_comments = InviteComment.where(id: @invite)
    		# redirect_to invite_path(@invite)
    	end
	end

	def destroy
        @invite_comment = InviteComment.find(params[:invite_id])
        @invite = @invite_comment.invite
        @invite_comment.destroy
        flash[:success] = "コメントを削除しました。"
        # redirect_to invite_path(@invite_comment.invite.id)
    end

	private

	def invite_comment_params
    	params.require(:invite_comment).permit(:comment)
	end

end
