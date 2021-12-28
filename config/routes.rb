# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :foods do
    resource :likes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
