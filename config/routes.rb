Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  root :to => 'products#index'

  devise_for :users, controllers: { sessions: "sessions", omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :products
  resources :events, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end