class MoviesController < ApplicationController
   def index
      @movies = Movie.all.order(:id)
      render json: @movies
   end

   def show 
      movie = Movie.find(params[:id])
      render json: movie
   end 

   def update
      movie = Movie.find(params[:id])
      movie.update(movieParams)
      render json: movie
   end 

   private 
   def movieParams
      params.require(:movie).permit(:like)
   end 
end
