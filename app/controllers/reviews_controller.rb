class ReviewsController < ApplicationController

  def show
    @review = review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.valid?
      redirect_to "/festival/:id/"
    else
      redirect_to new_review_path
      # render :new
    end
  end

  def edit
    @reviews = Review.find(params[:id])
  end

  def update
    @reviews = Review.find(params[:id])
    @reviews.update(reviews_params)

    redirect_to "/festival/:id/"
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to "/festival/:id/"
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :festival_id, :text)
  end
end
