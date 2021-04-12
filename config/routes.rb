Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'
  get 'search_stock', to: 'stocks#search'
  resources :friendships, only: [:create, :destroy]
end
