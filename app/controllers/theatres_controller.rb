class TheatresController < ApplicationController
  before_action :set_theatre, only: [:show, :edit, :update, :destroy]

  def index
     @movies = Movie.all
     @theatres = Theatre.all
     @timings = Timing.all
  end

  def new
    @theatre = Theatre.new
  end

  def create
    @theatre = Theatre.new(theatre_params)
    if @theatre.save
      redirect_to theatres_path
    end
  end

  def show
  end

  def edit
  end
  
  def update
   if @theatre.update(theatre_params)
    redirect_to theatres_path
  end 
  end 

  def destroy
    if @theatre.destroy
      redirect_to theatres_path
    end
  end

  def theatre_params
     params.require(:theatre).permit(:theatre_name, :place, :time)
  end

  def search
     @search = Theatre.search(params[:search])
      if @search == []
      @search1 = 'No record found'
      end
  end

  def set_theatre
  @theatre = Theatre.find(params[:id])
  end
end
