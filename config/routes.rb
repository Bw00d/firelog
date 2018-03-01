Rails.application.routes.draw do
  resources :categories
  resources :expenses
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
