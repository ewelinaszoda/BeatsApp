class ReviewsController < ApplicationController



  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.valid?
      redirect_to @review
    else
      redirect_to new_review_path
      # render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @reviews = Review.find(params[:id])
  end

  def update
    @reviews = Review.find(params[:id])
    @reviews.update(reviews_params)

  
  end

  def destroy
    Review.find(params[:id]).destroy
    # redirect_to "/festival/:id/"
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :festival_id, :text)
  end
end
