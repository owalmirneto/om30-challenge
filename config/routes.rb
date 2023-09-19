# frozen_string_literal: true

require "sidekiq/web"

Rails.application.routes.draw do
  root "home#index"

  resources :citizens, except: [:show, :destroy]

  namespace :api do
    resources :addresses, only: :index
    resources :toggle_status_citizens, only: :update
  end

  mount Sidekiq::Web => "/sidekiq" if Rails.env.development?
end
