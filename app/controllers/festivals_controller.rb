class FestivalsController < ApplicationController
 
  def index
    # @festivals = Festival.search(params[:query])
    # render 'index' #?????????
    @festival = Festival.all
  end
  

  def show
    @festival = Festival.find(params[:id])
  end

  def find
  end 

  def like 
    @festival = Festival.find(params[:id])
    @festival.like
    redirect_to @festival
  end 


  def festival_params
    params.require(:festival).permit(:name, :start_date, :end_date, :localization, :genre, :like, :description)
  end 

end
