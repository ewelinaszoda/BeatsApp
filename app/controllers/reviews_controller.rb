class ReviewsController < ApplicationController

  def index
    @reviews = Review.all 
  end 

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.valid?
      redirect_to "/festivals"
    else 
      redirect_to new_review_path
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :festival_id, :text)
  end
end
