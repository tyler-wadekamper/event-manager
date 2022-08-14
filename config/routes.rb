Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :events, only: [:index, :new, :create]

  # Defines the root path route ("/")
  root "events#index"
end
