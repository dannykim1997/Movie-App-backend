class MoviesController < ApplicationController
    require "rest-client"
    def get_tv_popular
        url = "https://api.themoviedb.org/3/tv/popular?api_key=a5284168423536e80459a648766c3be1&language-en-US"
        response = RestClient.get(url)
        render json: response
    end

    def trending_movies
        url = "https://api.themoviedb.org/3/trending/all/week?api_key=a5284168423536e80459a648766c3be1&language-en-US"
        response = RestClient.get(url)
        render json: response
    end
end
