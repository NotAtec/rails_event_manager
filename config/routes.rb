Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users, only: [:index, :show]
  resources :event_ticketings, only: [:create, :destroy]
  get "/user/tickets", to: "users#tickets"
  get "/about", to: "static_pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
