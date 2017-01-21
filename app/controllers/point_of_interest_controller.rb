class PointOfInterestController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update]

  def index
    point_of_interests = PointOfInterest.all
    render json: point_of_interests.to_json
  end

  def show
    point_of_interest = PointOfInterest.find(params[:id])
    render json: point_of_interest.to_json
  end

  def create
    point_of_interest = PointOfInterest.new(point_of_interest_params)
    if point_of_interest.save
      render json: {point_of_interest: point_of_interest, message: "Point of interest #{point_of_interest.name} has been created"}.to_json
    else
      render json: {message: "Error with creating point_of_interest"}
    end
  end

  def update
    point_of_interest = PointOfInterest.find(params[:id])
    point_of_interest.update(point_of_interest_params)
    render json: point_of_interest.to_json
  end

  private
  def point_of_interest_params
    params.require(:point_of_interest).permit(:name, :description, :location)
  end
end
