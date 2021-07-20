Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/check_email', to: 'users#check_email'
  end
  devise_for :users
  root 'admin/users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
