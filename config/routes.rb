Rails.application.routes.draw do
  root 'welcome#index'

  resources :pokemon, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :pokemon, only: :index
    end
  end
end
