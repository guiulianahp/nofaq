Rails.application.routes.draw do
  devise_for :users
  resources :doubts do
  	resources :offers
  end
  root 'home#index'
end