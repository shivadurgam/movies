class MoviesController < ApplicationController
 
before_action :set_movie, only: [:show_movie, :edit_movie, :update_movie]
before_action :set_theatre, only: [:show_theatre, :edit_theatre, :update_theatre]
before_action :set_timing, only: [:show_timing, :edit_timing, :update_timing]

  def index
  	@movies = Movie.all
  	@theatres = Theatre.all
    @timings = Timing.all
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
  
  def show_timing
    @timing = Timing.find(params[:id])
  end

  def edit_timing
    @timing = Timing.find(params[:id])
  end
 
  def update_timing
  if @timing.update(timing_params)
    redirect_to home_path
  end 
  end 


  def set_movie
  	@movie = Movie.find(params[:id])
  end

  def set_theatre
  	@theatre = Theatre.find(params[:id])
  end

  def set_timing
    @timing = Timing.find(params[:id])
  end

  def movie_params
  	params.require(:movie).permit(:name, :actor, :actress, :theatre_id)
  end

  def theatre_params
  	params.require(:theatre).permit(:theatre_name, :place, :time)
  end

  def timing_params
    params.require(:timing).permit(:morning_show, :matinee_show, :first_show, :second_show, :theatre_id)
  end

  def search_movie
  	@search = Movie.search(params[:search])
    if @search == []
  		@search1 = 'No record found'
  	end
  		
  end

  def search_theatre
  	@search = Theatre.search(params[:search])
  	 if @search == []
  		@search1 = 'No record found'
  	end
  end

  def search_timing
    @search = Timing.search(params[:search])
     if @search == []
      @search1 = 'No record found'
    end
  end






#def next
  	
 # 	user = Account.find_by(username: params[:account][:username], password: params[:account][:password])

    #@user3 = Account.select("username, password").where(username: params[:username], password: params[:login][:password])

  #	if user == nil
	#	@print = 'Invalid login: Please check your username and password'
#	else
#		@print = 'Login successful!!'
#	end



end
