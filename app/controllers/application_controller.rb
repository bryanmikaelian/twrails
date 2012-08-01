class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def twitter
    Twitter.configure do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.oauth_token = session['twitter_access_token']
      config.oauth_token_secret = session['twitter_access_secret']
    end
  end
end
