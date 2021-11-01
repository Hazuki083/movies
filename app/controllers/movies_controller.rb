class MoviesController < ApplicationController
before_action :authenticate_user!

  def index
    @user = current_user
    @movie = Movie.new
  end

  def show
  end

  def update

  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    @movie.save
    redirect_to '/top'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :body)
  end
end
