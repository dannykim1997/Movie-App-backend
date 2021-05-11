Rails.application.routes.draw do
resources :users, only: [:index, :create]

resources :movies
resources :reviews

resources :sessions, only: [:create]
post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
