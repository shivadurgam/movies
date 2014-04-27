  class MoviesController < ApplicationController

    before_action :set_movie, only: [:show, :edit, :update, :destroy]
    before_filter :allow_iframe_requests


    def allow_iframe_requests
      response.headers.delete('X-Frame-Options')
    end


    def index
     @movies = Movie.all
     @theatres = Theatre.all
     @timings = Timing.all

   end

   def show
   end

   def new
    @movie = Movie.new
   end

   def create
     @movie = Movie.new(movie_params)
     if @movie.save
       redirect_to movies_path
     end
   end

  def edit
  end

  def update
   if @movie.update_attributes(movie_params)
    redirect_to movies_path
  end	
end

def destroy
  if @movie.destroy
    redirect_to movies_path
  end
end





def set_movie
 @movie = Movie.find(params[:id])
end

def movie_params
 params.require(:movie).permit(:name, :actor, :actress, :theatre_id)
end

def search
 @search = Movie.search(params[:search])
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
