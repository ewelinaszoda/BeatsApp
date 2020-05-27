class FestivalsController < ApplicationController
 
  def index
    # @festivals = Festival.search(params[:query])
    # render 'index' #?????????
    @festival = Festival.all
  end
  
  def show
    @festival = Festival.find(params[:id])
  end

end
