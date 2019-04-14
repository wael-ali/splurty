Rails.application.routes.draw do

  resources :words

  root 'quotes#home'

  resources :quotes
  resources :codes
  
  get 'api/words', to: 'api#words'
  get 'api/codes', to: 'api#codes'
  get 'getwords', to: 'words#words'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
