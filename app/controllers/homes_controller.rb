class HomesController < ApplicationController

  def top
  	@post = Post.limit(2)
  end

  def about
  end

end
