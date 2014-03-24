CoffeeTracker::Application.routes.draw do
  root :to => 'drinks#index'
  resources :drinks
end
