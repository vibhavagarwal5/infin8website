Rails.application.routes.draw do
  resources :registrations
  resources :events
      devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    end
