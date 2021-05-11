Rails.application.routes.draw do
resources :users
get '/populartv', to: "movies#get_tv_popular"
get '/popularmovies', to: "movies#popular_movies"
get '/comedymovies', to: "movies#comedy_movies"
resources :movies
resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
