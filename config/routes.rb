Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :home, only: %i[index show edit new create destroy]
  resources :posts
  resource :profiles,only: %i[show edit update]
  # Defines the root path route ("/")
  root "home#index"
end
