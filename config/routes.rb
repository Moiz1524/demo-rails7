Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "posts#index"

  resources :comments
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end