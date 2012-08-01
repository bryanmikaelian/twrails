class HomeController < ApplicationController

  def index
    @tweets = twitter.home_timeline
  end

end
