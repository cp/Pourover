CoffeeTracker::Application.routes.draw do
  devise_for :users

  root :to => 'drinks#index'
  resources :drinks
end
