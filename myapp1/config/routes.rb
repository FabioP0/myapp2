Rails.application.routes.draw do
  devise_for :users
  get 'home/dashboard'
  resources :people
  resources :movies
  root "home#dashboard"
end
