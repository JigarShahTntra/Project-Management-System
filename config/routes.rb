
# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :users do
      collection { post :import }
    end
    resources :employees do
      collection { post :import }
    end
    get 'users/index'
    get 'users/check_email', to: 'users#check_email'
  end
  root 'admin/users#index'
end
