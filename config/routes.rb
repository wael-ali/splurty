Rails.application.routes.draw do

  resources :words

  root 'quotes#home'

  resources :quotes
  resources :codes
  #get 'about', to: 'quotes#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
