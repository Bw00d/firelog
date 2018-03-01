Rails.application.routes.draw do
  resources :expenses
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
