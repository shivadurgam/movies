class TimingsController < ApplicationController
  before_action :set_timing, only: [:show, :edit, :update, :destroy]

  def index
   @movies = Movie.all
   @theatres = Theatre.all
   @timings = Timing.all
  end

  def new
  @timing = Timing.new
  end

  def create
  @timing = Timing.new(timing_params)
  if @timing.save
    redirect_to timings_path
  end
  end

  def show
  end

  def edit
  end

  def update
   if @timing.update(timing_params)
    redirect_to timings_path
  end
  end

  def destroy
    if @timing.destroy
      redirect_to timings_path
    end
  end

  def search
    @search = Timing.search(params[:search])
    if @search == []
      @search1 = 'No record found'
    end
  end

  private

  def timing_params
   params.require(:timing).permit(:morning_show, :matinee_show, :first_show, :second_show, :theatre_id)
  end

 def set_timing
  @timing = Timing.find(params[:id])
 end
end
