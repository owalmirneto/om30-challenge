# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  resources :citizens, except: [:show, :destroy]

  namespace :api do
    resources :addresses, only: :index
    resources :toggle_status_citizens, only: :update
  end
end
