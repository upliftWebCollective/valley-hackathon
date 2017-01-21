Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :point_of_interest, only: [:index, :show, :create, :update]
  resources :business, only: [:index, :show, :create, :update]
end
