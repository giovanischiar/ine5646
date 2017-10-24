Rails.application.routes.draw do
  root :to => 'products#index'

  devise_for :users, controllers: { sessions: "sessions", omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end