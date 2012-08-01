Twrails::Application.routes.draw do
  root :to => 'sessions#index'

  resources :tweets
  match 'auth/twitter/callback', to: 'sessions#create'
  match '/home', :to => 'home#index'
end
