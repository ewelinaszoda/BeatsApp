class FestivalsController < ApplicationController
 
  def index
    # @festivals = Festival.search(params[:query])
    # render 'index' #?????????
    @festival = Festival.all
  end
  
  def home

  end

  def about
    # with it reading as a two layouts
    # render 'layouts/form'
  end 

  def contact_us
  end 

  def show
    # byebug
    @festival = Festival.find(params[:id])
  end

  def find
    @festival = Festival.new
  end 

  def find_festival
    @festival = Festival.find(params[:festival][:id])
    redirect_to @festival
  end

  # def add_festival
  #   festival = Festival.find_by(id: params[:id])
  # end 
  

  # def like 
  #   @festival = Festival.find(params[:id])
  #   @festival.like
  #   redirect_to @festival
  # end 


  def festival_params
    params.require(:festival).permit(:name, :start_date, :end_date, :localization, :genre, :like, :description)
  end 

end
