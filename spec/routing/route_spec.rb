require 'spec_helper'

describe 'routes' do
  describe 'root' do
    it 'routes the root to the index action on the sessions controller.' do
      { :get => '/' }.should route_to(:controller => 'sessions', :action => 'index')
    end
  end

  describe 'home' do
    it 'routes the home page to the index action on the home controller' do
      { :get => '/home'}.should route_to(:controller => 'home', :action => 'index')
    end
  end

  describe 'logout' do
    it 'routes the sign out link to the destroy action on the session controller' do
      { :get => '/logout'}.should route_to(:controller => 'sessions', :action => 'destroy')
    end
  end
end
