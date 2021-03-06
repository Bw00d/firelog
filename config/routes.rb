Rails.application.routes.draw do
  resources :projections
  resources :expenditures
  resources :payments
  resources :vendors
  resources :categories
  resources :expenses
  root to: 'expenses#index'
  devise_for :users
  resources :users

  get "/fetch_months" => 'expenses#selected_month', as: 'fetch_months'
end
