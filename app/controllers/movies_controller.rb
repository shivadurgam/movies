class MoviesController < ApplicationController
 
before_action :set_movie, only: [:show_movie, :edit_movie, :update_movie]
before_action :set_theatre, only: [:show_theatre, :edit_theatre, :update_theatre]
  def index
  	@movies = Movie.all
  	@theatres = Theatre.all
  end

  def show_movie
  end
  

  def edit_movie
  	@movie = Movie.find(params[:id])
  	
  end

  def update_movie
	if @movie.update_attributes(movie_params)
		redirect_to home_path
	end	
  end

  def show_theatre
  	@theatre = Theatre.find(params[:id])
  end

  def edit_theatre
  	@theatre = Theatre.find(params[:id])
  end
 
  def update_theatre
	if @theatre.update(theatre_params)
		redirect_to home_path
	end	
  end	

  def set_movie
  	@movie = Movie.find(params[:id])
  end

  def set_theatre
  	@theatre = Theatre.find(params[:id])
  end

  def movie_params
  	params.require(:movie).permit(:name, :actor, :actress, :theatre_id)
  end

  def theatre_params
  	params.require(:theatre).permit(:theatre_name, :place, :time)
  end

  def search
  
  end

end
