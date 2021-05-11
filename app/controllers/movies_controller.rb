class MoviesController < ApplicationController
    def popular_movies
        movies = Movie.all.where(category: "popular")
        render json: MovieSerializer.new(movies).serialized_json
    end

    def comedy_movies
        movies = Movie.all.where(category: "comedy")
        render json: MovieSerializer.new(movies).serialized_json
    end
end
