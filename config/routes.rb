Rails.application.routes.draw do
  resources :books
  resources :categories
  resources :authors
  resources :publishers
  get 'about' => 'about#index'
  root 'books#index'
end
