class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
  end

  def results
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating, :poster_url)
  end
end
