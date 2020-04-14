class HomesController < ApplicationController

  def top
  	@invite = Invite.limit(2)
  	@post = Post.limit(2)
  end

  def about
  end

end
