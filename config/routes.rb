Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :regs
  resources :events
  post '/regs/new', to: 'regs#new', as: 'regs_post'
  post '/sendquery', to: 'frontend#sendmail', as: 'send_query'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show'  , as: 'user'
  # # delete '/users/:id', to: 'users#destroy'
  # get '/users/:id/edit' to: 'users#edit', as: ''
  resources :users
  get '/front', to: 'frontend#index', as: 'front'
  root to: "frontend#index"
    end
