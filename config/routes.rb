Rails.application.routes.draw do
  resources :comments
  resources :historicos
  resources :lista
  resources :gastos
  resources :tetos
  resources :carteiras
  resources :promos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
