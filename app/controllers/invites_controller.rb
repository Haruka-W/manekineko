class InvitesController < ApplicationController

  def new
    @invite = Invite.new
  end

  def index
    @invite = Invite.all
    # 検索前の全件表示時
    @invites = Invite.page(params[:page]).reverse_order
    @counts = @invites.total_count
  end

  def show
  end

  def create
    @invite = Invite.new(invite_params)
    @invite.user_id = current_user.id
    @invite.save
    redirect_to user_path(current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def invite_params
      params.require(:invite).permit(:title, :content, :sex, :age, :type, :image)
    end

end
