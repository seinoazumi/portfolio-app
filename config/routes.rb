Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'informations#index'
  get '/about', to: 'informations#about'

  resources :users

  resources :works, only: [:index, :show] 
    namespace :admin do
      resources :works, only: [:index, :new, :create, :edit, :destroy]
    end
  end
