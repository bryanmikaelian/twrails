class TweetsController < ApplicationController

  def create
    twitter.update(params[:status])
    redirect_to '/home'
  end

end
