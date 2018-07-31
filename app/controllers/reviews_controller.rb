class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.valid?
      @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :cocktail_id)
  end
end
