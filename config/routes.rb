Rails.application.routes.draw do
  resources :budgets
  resources :projections
  resources :expenditures
  resources :payments
  resources :vendors
  resources :categories
  resources :expenses
  resources :charts
  root to: 'expenses#index'
  devise_for :users
  resources :users

  get "/fetch_months"   => 'expenses#selected_month', as: 'fetch_months'
end
