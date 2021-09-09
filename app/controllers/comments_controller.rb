class CommentsController < ApplicationController
   def create
      # byebug
      @movie = Movie.find_by(id: params[:movie_id])
      if @movie
         @comment = @movie.comments.create(params.permit(:name, :content))
         render json: @comment
      else 
         render json: {message: "Invalid"}
      end
   end
end
