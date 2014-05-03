Pourover::Application.routes.draw do
  resources :consumptions
  resources :drinks
  devise_for :users

  root :to => 'consumptions#index'
  get '/preferences', to: 'static#preferences'
  get '/api/consumptions/heatmap', to: 'consumptions#heatmap'
end
