class ReviewsController < ApplicationController

  def index
    @location = Location.find(params[:location_id])
    review_json_response(@location.reviews)
  end

  def show
    @location = Location.find(params[:location_id])
    @review = Review.find(params[:id])
    review_json_response(@review)
  end

  def create
    @location = Location.find(params[:location_id])
    @review = Review.create!(review_params)
    review_json_response(@review)
  end

  def update
    @location = Location.find(params[:location_id])
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @location = Location.find(params[:location_id])
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
    def review_params
      params.permit(:author, :content, :location_id)
    end
end