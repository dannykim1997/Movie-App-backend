class MoviesController < ApplicationController
    # require "rest-client"

    # def trending_movies
    #     url = "https://api.themoviedb.org/3/movie/popular?api_key=a5284168423536e80459a648766c3be1&language-en-US"
    #     response = RestClient.get(url)
    #     render json: response
    # end

    def index
        @movies = Movie.all
        render json: @movies
    end
end
