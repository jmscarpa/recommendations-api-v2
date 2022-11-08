class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end
  
  def show
    @recommendation = Recommendation.find(params[:id])
  end

  def create
    recommendation = Recommendation.new(recommendations_params)

    if recommendation.save
      render json: {}, status: 201
    else
      render json: { error: recommendation.errors.full_messages.first }, status: 422
    end
  end

  def update
    recommendation = Recommendation.find(params[:id])
    recommendation.attributes = recommendations_params
    if recommendation.save
      render json: {}, status: 200
    else
      render json: { error: recommendation.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    recommendation = Recommendation.find(params[:id])
    if recommendation.destroy
      render json: {}, status: 200
    else
      render json: { error: recommendation.errors.full_messages.first }, status: 422
    end
  end

  private

  def recommendations_params
    params.permit(:title, :description, :cover_url, :category_id)
  end

end