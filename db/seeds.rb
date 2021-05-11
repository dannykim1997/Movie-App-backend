require 'open-uri'
require 'net/http'
require 'json'

Review.destroy_all
Movie.destroy_all
User.destroy_all

movies_api = "https://api.themoviedb.org/3/movie/popular?api_key=a5284168423536e80459a648766c3be1&language-en-US"
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

movies_response = GetRequester.new(movies_api)
movies = movies_response.get_response_body

u1 = User.create(username: "Daniel", password: "password")
u2 = User.create(username: "kai", password: "12345")
u3 = User.create(username: "lorraine", password: "abcde")

movies["results"].each do |movie|
    movieTitle = movie["title"]
    movieImage = movie["poster_path"]
    movieOverview = movie["overview"]
Movie.create(title: movieTitle, image: "#{img_url}"+movieImage, overview: movieOverview)
end

40.times do
Review.create(comment: Faker::Quote.robin, user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
end