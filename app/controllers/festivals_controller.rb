class FestivalController < ApplicationController
 
  def index
    @festivals = Festival.search(params[:query])
    render 'index'
  end
  
  def show
  end

  def new
  end

  def create
  end

  def delete
  end
end
