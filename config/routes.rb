Rails.application.routes.draw do
  resources :equipment
  resources :posts
  devise_for :users
  root 'static#homepage'
end
