Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :apartments
    resources :properties
    resources :admin_users

    root to: "users#index"
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :apartments
  end
  root to: 'static#index'
end
