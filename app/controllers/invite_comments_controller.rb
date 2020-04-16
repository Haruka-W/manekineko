class InviteCommentsController < ApplicationController

	def create
		invite = Invite.find(params[:invite_id])
    	comment = current_user.invite_comments.new(invite_comment_params)
    	comment.invite_id = invite.id
    	comment.save
    	redirect_to invite_path(invite)
	end

	private

	def invite_comment_params
    	params.require(:invite_comment).permit(:comment)
	end

end
