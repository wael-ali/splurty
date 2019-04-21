Rails.application.routes.draw do

  resources :words

  root 'quotes#home'

  resources :quotes
  resources :codes
  resources :infos
  get 'english/standup', to: 'codes#englishCode'
  
  get 'api/words', to: 'api#words'
  get 'api/codes', to: 'api#codes'
  get 'getwords', to: 'words#words'
  get 'info/list', to: 'infos#info_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
