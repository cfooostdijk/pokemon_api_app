Rails.application.routes.draw do
  root 'welcome#index'

  get 'searches/index'
  resources :pokemon, only: [:index]
end
