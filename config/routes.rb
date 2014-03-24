CoffeeTracker::Application.routes.draw do
  devise_for :users

  root :to => 'static#index'
  resources :drinks
  get '/preferences', to: 'static#preferences'
end
