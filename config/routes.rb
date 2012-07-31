Twrails::Application.routes.draw do

  resources :sessions
  root :to => 'sessions#index'

end
