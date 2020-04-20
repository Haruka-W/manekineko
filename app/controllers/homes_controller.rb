class HomesController < ApplicationController

  def top
  	@invites = Invite.limit(2)
  	@posts = Post.limit(2)
  end

  def about
  end

end
