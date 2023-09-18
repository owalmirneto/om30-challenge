# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  resources :citizens, except: [:show, :destroy]
end
