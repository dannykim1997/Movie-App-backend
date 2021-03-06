Rails.application.routes.draw do
  
resources :users
get '/populartv', to: "movies#get_tv_popular"
get '/popularmovies', to: "movies#popular_movies"
get '/comedymovies', to: "movies#comedy_movies"

resources :users, only: [:index, :create]
post '/login', to: 'users#login'
post '/signup', to: 'users#create'

resources :movies
resources :reviews

resources :sessions
post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
