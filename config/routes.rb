Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :events, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
  resources :event_attendees, only: [:create]

  # Defines the root path route ("/")
  root "events#index"
end
