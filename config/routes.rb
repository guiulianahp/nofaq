Rails.application.routes.draw do
  resources :offers
  resources :doubts
  root 'home#index'
end