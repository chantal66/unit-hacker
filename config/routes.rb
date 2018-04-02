Rails.application.routes.draw do
  get 'properties/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties, only: [:index, :new]
  root to: 'static#index'
end
