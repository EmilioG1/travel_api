class LocationsController < ApplicationController

  def index
    @locations = Location.all
    location_json_response(@locations)
  end

  def show
    @location = Location.find(params[:id])
    location_json_response(@location)
  end

  def create
    @location = Location.create!(city: params[:city])
    params[:reviews].each do |review|
      @location.reviews.create!(author: review[:author], content: review[:content])
    end
    location_json_response(@location)
  end

  private
  def location_params
    params.permit(:city, :reviews => [:author, :content])
  end
end

