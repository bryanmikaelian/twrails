class HomeController < ApplicationController

  def index
    if session['twitter_access_token'] && session['twitter_access_secret']
      @tweets = twitter.home_timeline
    else
      redirect_to '/'
    end
  end

end
