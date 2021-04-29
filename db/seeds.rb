require 'open-uri'
require 'json'

movies_url = 'http://tmdb.lewagon.com/movie/top_rated'

result = URI.open(movies_url).read
movies = JSON.parse(result)

movies['results'].each do |movie|
  Movie.create(title: movie['original_title'],
               overview: movie['overview'],
               rating: movie['vote_average'],
               poster_url: "https://image.tmdb.org/t/p/w200#{movie['poster_path']}")
end
