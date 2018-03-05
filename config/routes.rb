Rails.application.routes.draw do
  resources :vendors
  resources :categories
  resources :expenses
  root to: 'expenses#index'
  devise_for :users
  resources :users
end
