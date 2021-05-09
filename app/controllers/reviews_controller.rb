class ReviewsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])

    @review.list = @list
    @review.save

    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
