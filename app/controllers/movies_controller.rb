class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
    movie = Movie.new(movie_params)
    movie.save
    redirect_to top
  end

  private

  def movie_params
    params.reqire(:movie).permit(:title, :body)
  end
end
