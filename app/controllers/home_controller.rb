class HomeController < ApplicationController

  def index
    @tweets = twitter
  end

end
