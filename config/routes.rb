Pourover::Application.routes.draw do
  resources :consumptions


  devise_for :users

  root :to => 'static#index'
  resources :drinks
  get '/preferences', to: 'static#preferences'
end
