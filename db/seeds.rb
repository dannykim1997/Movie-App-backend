require 'open-uri'
require 'net/http'
require 'json'

Review.destroy_all
Movie.destroy_all
User.destroy_all

popular_movies_api = "https://api.themoviedb.org/3/movie/popular?api_key=a5284168423536e80459a648766c3be1&language-en-US"
comedy_movies_api = "https://api.themoviedb.org/3/discover/movie?api_key=a5284168423536e80459a648766c3be1&with_genres=35"
img_url = "https://image.tmdb.org/t/p/original"

class GetRequester 
    def initialize(url)
        @url = url
    end
    def get_response_body
        url = URI.parse(@url)
        resp = Net::HTTP.get_response(url)
        JSON.parse(resp.body)
    end
end

popular_movies_response = GetRequester.new(popular_movies_api)
popularMovies = popular_movies_response.get_response_body
comedy_movies_response = GetRequester.new(comedy_movies_api)
comedyMovies = comedy_movies_response.get_response_body

u1 = User.create(username: "Daniel", password: "password")
u2 = User.create(username: "kai", password: "12345")
u3 = User.create(username: "lorraine", password: "abcde")

popularMovies["results"].each do |movie|
    movieTitle = movie["title"]
    movieImage = movie["poster_path"]
    movieOverview = movie["overview"]
Movie.create(title: movieTitle, image: "#{img_url}"+movieImage, overview: movieOverview, category: "popular")
end

comedyMovies["results"].each do |movie|
    movieTitle = movie["title"]
    movieImage = movie["poster_path"]
    movieOverview = movie["overview"]
Movie.create(title: movieTitle, image: "#{img_url}"+movieImage, overview: movieOverview, category: "comedy")
end

40.times do
Review.create(comment: Faker::Quote.robin, user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
end