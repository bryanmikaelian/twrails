Twrails::Application.routes.draw do

  resources :sessions
  root :to => 'session#index'

end
