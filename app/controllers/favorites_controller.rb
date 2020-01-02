class FavoritesController < ApplicationController
  before_action :require_signin
  def create
    @movie.favorites.create!(user: current_user)
  end

  def destroy
    @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    @favorite.destroy
  end

  private
    def set_movie
      @movie = Movie.find_by!(slug: params[:movie_id])
    end
end
