class MarksController < ApplicationController

	def create
		@invite = Invite.find(params[:invite_id])
        mark = current_user.marks.new(invite_id: @invite.id)
        mark.save
        # redirect_to invite_path(invite)
	end

	def destroy
		@invite = Invite.find(params[:invite_id])
        mark = current_user.marks.find_by(invite_id: @invite.id)
        mark.destroy
        # redirect_to invite_path(invite)
	end

end
