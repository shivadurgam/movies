class MoviesController < ApplicationController
 

  def index
  	@movies = Movie.all
  	@theatres = Theatre.all
  end

  def movie_show
  	@movie = Movie.find(params[:id])
  end
  def theatre_show
  	@theatre = Theatre.find(params[:id])
  end

  def edit
  	@movie = Movie.find(params[:id])
  end

  def update
	if @movie.update(movie_params)
		redirect_to home_path
	end	
  end

  def edit_theatre
  	@theatre = Theatre.find(params[:id])
  end
 	
 def movie_params
  	params.require(:movie).permit(:name, :actor, :actress, :theatre_id)
  end

end
