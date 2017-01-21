class BusinessController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update]

  def index
    businesses = Business.all
    render json: businesses.to_json
  end

  def show
    business = Business.find(params[:id])
    render json: business.to_json
  end

  def create
    binding.pry
    business = Business.new(business_params)
    if business.save
      render json: {business: business, message: "Business #{business.name} has been created"}.to_json
    else
      render json: {message: "Error with creating business"}
    end
  end

  def update
    business = Business.find(params[:id])
    business.update(business_params)
    render json: business.to_json
  end

  private
  def business_params
    params.require(:business).permit(:name, :business_key, :location, :description, :business_type)
  end
end
