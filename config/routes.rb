require "sidekiq/web"

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "posts#index"

  resources :comments
  resources :posts do
    resources :comments
  end

  mount Sidekiq::Web => '/sidekiq'
end
