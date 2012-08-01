class TweetsController < ApplicationController

  def create
    twitter.update(params[:status])
  end

end
