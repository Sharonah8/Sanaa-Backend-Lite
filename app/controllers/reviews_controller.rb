class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

#   def show
#     review = find_review
#     render json: review
#   end

  def create
    review = Review.create!(review_params)
    render json: review, status: :created
  end

  private
  def review_params
    params.permit(:comment, :name, :image_url)
  end
end
