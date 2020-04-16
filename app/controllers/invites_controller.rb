class InvitesController < ApplicationController

  def new
    @invite = Invite.new
  end

  def index
    @invite = Invite.page(params[:page]).reverse_order
    # 検索前の全件表示時
    @invites = Invite.page(params[:page]).reverse_order
    @counts = @invites.total_count
  end

  def show
    @invite = Invite.find(params[:id])
    @invite_comment = InviteComment.new
  end

  def create
    @invite = Invite.new(invite_params)
    @invite.user_id = current_user.id
    @invite.save
    redirect_to user_path(current_user.id)
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    invite = Invite.find(params[:id])
    invite.update(invite_params)
    redirect_to invite_path(invite)
  end

  def destroy
    invite = Invite.find(params[:id])
    invite.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def invite_params
    params.require(:invite).permit(:title, :content, :sex, :age, :type, :image)
  end

end
