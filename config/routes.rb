Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get 'users/index'
    get 'users/check_email', to: 'users#check_email'
  end
  root 'admin/users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
