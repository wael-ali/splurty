Rails.application.routes.draw do

  resources :words

  root 'quotes#index'

  resources :quotes
  get 'about', to: 'quotes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
