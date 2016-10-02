Rails.application.routes.draw do
  resources :doubts
  root 'home#index'
end