Rails.application.routes.draw do
  devise_for :users
  resources :offers
  resources :doubts
  root 'home#index'
end