class SessionsController < ApplicationController

  def create
    session[:twitter_access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:twitter_access_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to home_path
  end

  def index

  end


  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
