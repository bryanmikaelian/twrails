Twrails::Application.routes.draw do
  root :to => 'sessions#index'

  match 'auth/twitter/callback', to: 'sessions#create'
  match '/home', :to => 'home#index'
end
