class SessionsController < ApplicationController

  def create
    session[:twitter_access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:twitter_access_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to home_path
  end

  def index

  end

  def destroy
    session[:twitter_access_token] = nil
    session[:twitter_access_secret] = nil
    redirect_to '/'
  end
end
